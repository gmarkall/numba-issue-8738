
void accept_pointer(void *p);

__attribute__((weak)) void f1() {}

void send_pointer_2() {
  accept_pointer((void*)f1);
}
