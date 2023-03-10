
void accept_pointer(void *p);
void f1();

void send_pointer2() {
  accept_pointer((void*)f1);
}

__attribute__((weak)) void f1() {}
