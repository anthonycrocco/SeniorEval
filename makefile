.PHONY: all verify_gpu clean

all: verify_gpu

verify_gpu: main.cu
	nvcc -01 -v -lrt -lm -arch=sm_75 -o $@ $^

clean: 
	rm *.txt