// positional parameters
// String sayHello (String name, int age, String country,) {}

// named parameters 'Type func({})'
// Have to provide default value or add 'required'

// String sayHello({
//   String name = 'anon',
//   int age = 99,
//   String country = 'wakanda',
// }) {
String sayHello({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you came from $country";
}

// optional positional parameters 
String sayHello2(
  String name,
  int age, 
  [String? country = 'wakanda']
) => "Hello $name, you are $age, and you came from $country";

void main() {
  print(sayHello(
    name: "Sangyoon",
    age: 27,
    country: "Korea",
  ));
  print(sayHello2('name', 27));
}
