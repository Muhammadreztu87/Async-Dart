Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print("Talenta Muda Digital");
  });
}

void main() {
  hello();
  print("Done");
}
