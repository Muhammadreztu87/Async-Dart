Stream<int> syncNumber() async* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

void main() {
  syncNumber().listen((event) {
    print(event);
  });

  print("Done");
}
