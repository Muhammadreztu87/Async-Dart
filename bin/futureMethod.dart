Future<String> sayHello(String name) {
  // return Future.delayed(Duration(seconds: 2), () {
  // return "Hello $name";

  //   throw Error();
  // });
  return Future.error(Exception("Ups"));
  // return Future.value("Hello $name");
}

void main() {
  sayHello("Restu") //error
      //.onError((error, stackTrace) => "Fallback") // error => fallback // sukses
      .whenComplete(() => print("Done Future"))
      .then((value) => print(value))
      .catchError((error) => print("Error with message ${error.message}"));
  print("Done");
}
