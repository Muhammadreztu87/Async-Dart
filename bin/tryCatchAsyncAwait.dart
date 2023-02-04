Future<String> firstName() async {
  return "Restu";
}

Future<String> lastName() async {
  return "Novdian";
}

Future<String> sayHello(String name) async {
  return "Hello $name";
}

Future<void> say() async {
  try {
    String first = await firstName();
    String last = await lastName();
    String hello = await sayHello("$first $last");
    print(hello);
  } catch (e) {
    print(e);
  } finally {
    print("Done say()");
  }
}

void main() {
  say();

  print("Done");
}
