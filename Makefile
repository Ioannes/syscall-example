.PHONY:
	demo clean

demo: syscal-run
	./syscal-run || (echo "Return cone: $$?"; )

syscal-run: syscal-run.o
	ld -o syscal-run syscal-run.o

syscall-run.o:
	cc -c -o syscal-run.o syscal-run.s

clean:
	rm syscal-run syscal-run.o
