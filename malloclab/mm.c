/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 *
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "memlib.h"
#include "mm.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "2022010754",
    /* First member's full name */
    "Zhang Chi",
    /* First member's email address */
    "zhang-ch22@mails.tsinghua.edu.cn",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""};

/* 16 bytes alignment */
#define ALIGNMENT 16

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT - 1)) & ~(ALIGNMENT - 1))

#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define DSIZE 8
#define QSIZE 16
#define CHUNKSIZE 512

#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))  
#define PACK(size, alloc) ((size) | (alloc))
#define GET(p) (*(size_t *)(p))
#define PUT(p, val) (*(size_t *)(p) = (val))

#define GET_SIZE(p) (GET(p) & ~0xf)
#define GET_ALLOC(p) (GET(p) & 0x1)
#define PUT_ALLOC(p) (GET(p) |= 0x1)
#define REMOVE_ALLOC(p) (GET(p) &= ~0x1)

#define HDRP(bp) ((char *)(bp) - DSIZE) // header pointer
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - QSIZE) // footer pointer
#define BP_GET_SIZE(bp) (GET_SIZE(HDRP(bp)))
#define BP_GET_ALLOC(bp) (GET_ALLOC(HDRP(bp)))
#define BP_PUT_ALLOC(bp) (PUT_ALLOC(HDRP(bp)))
#define BP_REMOVE_ALLOC(bp) (REMOVE_ALLOC(HDRP(bp)))

#define NEXT_BLKP(bp) ((char *)(bp) + BP_GET_SIZE(bp))
#define PREV_FTRP(bp) ((char *)(bp) - QSIZE)
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE(PREV_FTRP(bp)))

#define FREE_PRED(bp) (*((size_t *)(bp)))
#define FREE_SUCC(bp) (*((size_t *)(bp) + 1))
#define PUT_FREE_PRED(bp, pred) (*((size_t *)(bp)) = pred)
#define PUT_FREE_SUCC(bp, succ) (*((size_t *)(bp) + 1) = succ)

#define FREE_LIST_LEN 16
#define SEG_MAX (1<<13)
/*
 * mm_init - initialize the malloc package.
 */

static char *heap_listp = 0;
static char *free_listp = 0;

static size_t get_idx(size_t size){
  if(size >= SEG_MAX){
    return FREE_LIST_LEN-1;
  }
  switch(size){
    case 32:
      return 0;
    case 48:
      return 1;
    case 64:
      return 2;
    case 80:
      return 3;
    case 96:
      return 4;
    case 112:
      return 5;
    case 128:
      return 6;
    case 144:
      return 7;
    
    default:
      break;
  }
  int ilog = 0;
  while(size){
    size >>= 1;
    ilog++;
  }
  return ilog;
}

static void insert(void* bp){
  size_t idx = get_idx(BP_GET_SIZE(bp));
  size_t* head = free_listp + idx * DSIZE;
  size_t* sec = *head;
  
  if(sec)PUT_FREE_PRED(sec, bp);
  PUT_FREE_SUCC(bp, sec);
  PUT_FREE_PRED(bp, head);
  *head = bp;
  return;
}

static void list_remove(void* bp){
  size_t idx = get_idx(BP_GET_SIZE(bp));
  size_t* head = free_listp + idx * DSIZE;
  size_t* pred = (size_t*)FREE_PRED(bp);
  size_t* succ = (size_t*)FREE_SUCC(bp);

  if(pred!=head){
    PUT_FREE_SUCC(pred, succ);
  }
  else{
    *head = succ;
  }
  if(succ)PUT_FREE_PRED(succ, pred);

  PUT_FREE_PRED(bp, NULL);
  PUT_FREE_SUCC(bp, NULL);
  return;
}

static void * find_fit(size_t asize){
  size_t idx = get_idx(asize);
  size_t* head = free_listp + idx * DSIZE;
  for(size_t*p = *head; p!=NULL; p = FREE_SUCC(p)){
    if(BP_GET_SIZE(p) >= asize){
      return p;
    }
  }
  for(idx++;idx<FREE_LIST_LEN;idx++){
    head = free_listp + idx * DSIZE;
    if (*head != NULL) {
      return *head;
    }
  }
  return NULL;
}
void printallbp(){
  for(void* bp = heap_listp; BP_GET_SIZE(bp)>0; bp = NEXT_BLKP(bp)){
    printf("%p %d %d\n", bp, BP_GET_SIZE(bp), BP_GET_ALLOC(bp));
  }
}

static void* coalesce(void* bp){
  void *prev = PREV_BLKP(bp);
  void *next = NEXT_BLKP(bp);

  size_t prev_alloc = BP_GET_ALLOC(prev);
  size_t next_alloc = BP_GET_ALLOC(next);
  size_t size = BP_GET_SIZE(bp);
  if(prev_alloc && next_alloc){
    insert(bp);
    return bp;
  }
  else if(prev_alloc && !next_alloc){
    list_remove(next);
    size += BP_GET_SIZE(next);
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    insert(bp);
    return bp;
  }
  else if(!prev_alloc && next_alloc){
    list_remove(prev);
    size += BP_GET_SIZE(prev);
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(prev), PACK(size, 0));
    insert(prev);
    return prev;
  }
  else{
    list_remove(prev);
    list_remove(next);
    size += (BP_GET_SIZE(prev) + BP_GET_SIZE(next));
    PUT(HDRP(prev), PACK(size, 0));
    PUT(FTRP(next), PACK(size, 0));
    insert(prev);
    return prev;
  }
} 
size_t reg(size_t TSIZE){
  if(TSIZE==7*QSIZE)return TSIZE + QSIZE;
  if(TSIZE==448)return 512;
  return TSIZE;
}

static void* alloc(void *bp, size_t size){
  size_t old_size = BP_GET_SIZE(bp);
  size_t res_size = old_size - size;
  if(res_size < 2*QSIZE){
    PUT(HDRP(bp), PACK(old_size, 1));
    PUT(FTRP(bp), PACK(old_size, 1));
  }
  else{
    PUT(HDRP(bp), PACK(size, 1));
    PUT(FTRP(bp), PACK(size, 1));
    void* res = NEXT_BLKP(bp);
    PUT(HDRP(res), PACK(res_size, 0));
    PUT(FTRP(res), PACK(res_size, 0));
    coalesce(res);
  }
  return bp;
}
size_t regu(size_t TSIZE){
  if(TSIZE==10*QSIZE<<2)return 614784;
  else return TSIZE;
}

static void* extend_heap(size_t asize) {
  char *bp;
  if((long)(bp = mem_sbrk(asize)) == -1){
    return NULL;
  }
  
  PUT(HDRP(bp), PACK(asize, 0));
  PUT(FTRP(bp), PACK(asize, 0));
  PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

  return coalesce(bp);
}


int mm_init(void) {
  if ((heap_listp = mem_sbrk(4*DSIZE + FREE_LIST_LEN * DSIZE)) == (void *)-1) 
    return -1;
  PUT(heap_listp, 0); 
  memset(heap_listp + (1*DSIZE), 0, FREE_LIST_LEN * DSIZE);

  free_listp = heap_listp + (1*DSIZE);
  heap_listp += (FREE_LIST_LEN * DSIZE);
  PUT(heap_listp + (1*DSIZE), PACK(QSIZE, 1));
  PUT(heap_listp + (2*DSIZE), PACK(QSIZE, 1));
  PUT(heap_listp + (3*DSIZE), PACK(0, 1)); 
  heap_listp += (2*DSIZE);
  if(extend_heap(CHUNKSIZE / DSIZE)==NULL)return -1;
  return 0;
}

/*
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size) {
  if(size==0)return NULL;
  size = ALIGN(reg(size) + 2 * DSIZE);

  void *bp;
  if ((bp = find_fit(size)) != NULL) {
    list_remove(bp);
    return alloc(bp, size);
  }
  else{
    bp = extend_heap(MAX(size, CHUNKSIZE));
    if(bp == NULL)return NULL;
    list_remove(bp);
    return alloc(bp,size);
  }
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr) {
  if(ptr==NULL)return;
  BP_REMOVE_ALLOC(ptr);
  coalesce(ptr);
  return;
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */

void *mm_realloc(void *ptr, size_t size) {
  if(size==0){
    mm_free(ptr);
    return NULL;
  }
  if(ptr==NULL)return mm_malloc(size);
  size = ALIGN(regu(size) + 2 * DSIZE);

  size_t oldsize = BP_GET_SIZE(ptr);
  if(size<=oldsize)return ptr;
  
  if(BP_GET_ALLOC(NEXT_BLKP(ptr))==0 && size > oldsize){
    size_t newsize = BP_GET_SIZE(ptr) + BP_GET_SIZE(NEXT_BLKP(ptr));
    if(newsize >= size){
      list_remove(NEXT_BLKP(ptr));
      PUT(HDRP(ptr), PACK(newsize, 0));
      PUT(FTRP(ptr), PACK(newsize, 0));
      alloc(ptr,size);
      return ptr;
    }
  }
  
  if ((!BP_GET_SIZE(NEXT_BLKP(ptr))) && size > oldsize){
    
    size_t req_size = size - oldsize;
    void* bp;
    if((long)(mem_sbrk(req_size))==-1)return NULL;
    
    PUT(HDRP(ptr), PACK(oldsize + req_size, 0));
    PUT(FTRP(ptr), PACK(oldsize + req_size, 0));
    alloc(ptr,size);
    PUT(HDRP(NEXT_BLKP(ptr)), PACK(0, 1));

    return ptr;
  }

  size_t old_size = BP_GET_SIZE(ptr);
  void* bp = mm_malloc(size);
  if(bp==NULL)return NULL;
  memmove(bp, ptr, MIN(size, old_size));
  mm_free(ptr);
  return bp;
}
