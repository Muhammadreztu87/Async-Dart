import 'fetureProblem.dart';

Future<void> say() async {
  String first = await firstName();
  String last = await lastName();
  String hello = await sayHello("$first $last");
  print(hello);
}

void main() {
  say();
  print("Done");
}
