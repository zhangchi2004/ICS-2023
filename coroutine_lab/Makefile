HEADERS=$(wildcard inc/*.h)
TARGETS=bin/sample bin/sleep_sort bin/binary_search

FLAGS=-O2 -g -Iinc -pthread

all: ${TARGETS}

bin/%: src/%.cpp lib/context.S ${HEADERS}
	g++ --std=c++17 -fno-omit-frame-pointer $< lib/context.S ${FLAGS} -o $@

clean:
	rm -rf ${TARGETS}
