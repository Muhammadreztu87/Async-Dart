import 'package:test/test.dart';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => "Restu Zikri");
}

void main() {
  test("Future Matcher", () {
    final name = getName();
    expect(name, completion(equals("Restu Zikri")));
  });
  test("Future Test", () async {
    final name = await getName();
    expect(name, "Restu Zikri");
  });
}
