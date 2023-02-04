Stream<String> names() {
  return Stream.fromIterable(["Restu", "Zikri", "Novdian"]);
}

Future<String> fullName() async {
  String name = " ";
  await for (String value in names()) {
    name += "$value ";
  }
  return name.trim();
}

void main() {
  fullName().then((value) => print(value));
  print("Done");
}
