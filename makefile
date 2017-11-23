# Makefile

cc = gcc
prom = hello
depens= $(shell find ./src/ -name "*.h")
src = $(shell find ./src/ -name "*.c")
obj= $(src:%.c=%.o)
$(prom):$(obj)
	$(cc) -o $(prom) $(obj)
%.o:%.c $(depens)
	$(cc) -c $< -o $@ 
clear:
	rm -rf $(obj) $(prom)
install:$(prom)
	install -m 755 $(prom) /usr/bin
.PHONY:install
