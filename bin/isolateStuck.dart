import 'dart:io';

Future<String> block() async {
  sleep(Duration(seconds: 2));
  return "Block";
}

void main() {
  print("Before");
  block().then((value) => print(value));
  print('Done');
}
