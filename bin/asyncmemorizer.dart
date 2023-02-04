import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    print("Calculate Get Data");
    return "Get Data";
  });
}

void main() async {
  final asyncMemorizer = AsyncMemoizer<String>();

  String result1 = await asyncMemorizer.runOnce(() => getData());
  print(result1);

  String result2 = await asyncMemorizer.runOnce(() => getData());
  print(result2);
}
