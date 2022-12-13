String sayHello(String name) {
  return "Hello $name nice to meet you!";
}
// String sayHello(String name) => "Hello $name nice to meet you!";

// positional parameters
// String sayHello (String name, int age, String country,) {}

// named parameters 'Type func({})'
// Have to provide default value or add 'required'

// String sayHello({
//   String name = 'anon',
//   int age = 99,
//   String country = 'wakanda',
// }) {
String sayHello2({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you came from $country";
}

// optional positional parameters 
String sayHello3(
  String name,
  int age, 
  [String? country = 'wakanda']
) => "Hello $name, you are $age, and you came from $country";

void main() {
  print(sayHello2(
    name: "Sangyoon",
    age: 27,
    country: "Korea",
  ));
  print(sayHello3('name', 27));
}
