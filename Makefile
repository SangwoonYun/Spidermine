PTRACE_SHARED_H := /usr/include/x86_64-linux-gnu/bits/ptrace-shared.h
HEADER_PATCH := patch/patch-6.2.10-ptrace-shared.patch

install:
	patch $(PTRACE_SHARED_H) $(HEADER_PATCH)

uninstall:
	patch -R $(PTRACE_SHARED_H) $(HEADER_PATCH)
