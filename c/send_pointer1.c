
void accept_pointer(void *p);
void f1();

void send_pointer1() {
  accept_pointer((void*)f1);
}

void f1() {}
