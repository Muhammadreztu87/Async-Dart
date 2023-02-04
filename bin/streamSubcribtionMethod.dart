import 'dart:async';

Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (i % 2 == 0) {
      return "$i : Genap";
    } else {
      return "$i : Ganjil";
    }
  });
}

void main() {
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((event) {
    print(event); // Tergantikan oleh onDone
  });

  listen.onData((data) {
    print("Stream Subscription Done : $data");
  });

  listen.onDone(() {
    print("Stream Subscription Done");
  });
  print("Done");
}
