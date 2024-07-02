Function f1() {
  int x = 1;
  f2() {
    return ++x;
  }
  return f2;
}
void main() {
  Function a = f1();
  print(a());
  print(a());
  print(a());
  print(a());
}
