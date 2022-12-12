void main() {
  // *** Types ***

  String name = "Sangyoon";
  int age = 27;
  bool man = true;
  double pi = 3.14;
  num x = 12; // rarely used
  x = 1.1;

  // Lists
  List<int> numbers = [
    1,
    2,
    3,
    4,
    // "hello" // Error : The element type 'String' can't be assigned to the list type 'int'.
  ];
  // numbers.add('kjshdf'); // Error : The argument type 'String' can't be assigned to the parameter type
  var giveMeFive = true;
  var numbers2 = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // Collection if
  ];

  // String Interpolation 
  var greeting = "Hello everyone, my name is $name and I'm ${age + 2}, nice to meet you";
  print(greeting);

  // Collection For 
  var oldFriends = ['Sangyoon', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren', 
    for(var frind in oldFriends) "good Old friend $frind",
  ];
  print(newFriends);

  // Maps 
  var player = {
    'name' : 'Sangyoon',
    'xp' : 19.99,
    'superpower' : false,
  };
  Map<int, String> stringMap = {
    1: "1",
    2: "2", 
    3: "3",
    // 4: true // Error : The element type 'bool' can't be assigned to the map value type 'String'.
  };

  // Sets 
  var numbers3 = {1, 2, 3, 4, 1};
  numbers3.add(1);
  numbers3.add(3);
  numbers3.add(99);
  print(numbers3);
}