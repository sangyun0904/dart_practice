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

// QQ Operator
//String capitalizeName(String? name) => name != null ? name.toUpperCase() : 'ANON';
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

typedef ListOfInts = List<int>;

// List<int> reverseListOfNumbers(List<int> list) {
ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

// String sayHi(Map<String, String> userInfo) {
String sayHi(UserInfo userInfo) { 
  return "Hi ${userInfo['name']}";
}

void main() {
  print(sayHello2(
    name: "Sangyoon",
    age: 27,
    country: "Korea",
  ));
  print(sayHello3('name', 27));
  print(capitalizeName("kim"));
  print(capitalizeName(null));

  String? name;
  name ??= 'ANON';
  //name ??= 'another'; // Warning: Operand of null-aware operation '??=' has type 'String' which excludes null.
  name = null;
  name ??= 'another';

  print(reverseListOfNumbers([1,2,3]));
}
