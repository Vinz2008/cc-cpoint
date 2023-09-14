all: test

lib.a:
	cpoint-build

test: lib.a
	cpoint -c test.cpoint -o test.o
	clang test.o src/main.o /usr/local/lib/cpoint/std/libstd.a /usr/local/lib/cpoint/bdwgc_prefix/lib/libgc.a -o test

clean:
	cpoint-build clean
	rm -f a.out lib.a