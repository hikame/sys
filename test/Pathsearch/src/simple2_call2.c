int bar(int x, int y);
int baz(int x, int y);

int foo(int x, int y, int z) {
  for (int i =0; i < x; i++) {
    y += bar(z, 3);
  }
  return y;
}

int bar(int x, int y) {
  if ( x < y) {
    return x*y;
  } else {
    return baz(x, y);
  }
}

int baz(int x, int y) {
  return x+y;
}
