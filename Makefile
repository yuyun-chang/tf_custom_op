TF_CFLAGS:=$(shell python -c 'import tensorflow as tf; print(" ".join(tf.sysconfig.get_compile_flags()))')
TF_LFLAGS:=$(shell python -c 'import tensorflow as tf; print(" ".join(tf.sysconfig.get_link_flags()))')

all: cuda_op_kernel.so

%.o: %.cc
	hipcc -fPIC $(TF_CFLAGS) -O3 -std=c++17 -DTENSORFLOW_USE_ROCM -DEIGEN_USE_HIP -I/usr/local/include -I/opt/rocm/include -c $< -o $@

cuda_op_kernel.so: cuda_op_kernel.cu.o cuda_op_kernel.o
	g++ -shared -Wl,--no-as-needed $(TF_LFLAGS) -o $@ $^

clean:
	rm -f *.o *.so
