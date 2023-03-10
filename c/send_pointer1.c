
void accept_pointer(void *p);

void f1() {}

void send_pointer_1() {
  accept_pointer((void*)f1);
}
