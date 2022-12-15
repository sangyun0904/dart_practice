// *** Abstract Classes ***
abstract class Human {
  void walk();
}

// *** Inheritance *** 
class Human2 {
  final String name;
  Human2(this.name);
  void sayHello() {
    print("Hi my name is $name");
  }
}

// *** Mixin *** 
// class which doesn't have constructor
class Strong {
  final double strenghtLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuuuun!");
  }
}

class Tall {
  final double height = 1.99;
}

// extends abstract
class Player extends Human {
  String name;
  int age;

  Player({
    required this.name,
    required this.age
  });

  void walk() {
    print("im walking");
  }
}

enum Team { blue, red }

// extends inheritance
class Player2 extends Human2 {
  final Team team;

  Player2({
    required this.team,
    required String name
  }) : super(name);

  @override 
  void sayHello() {
    super.sayHello();
    print("and I play for ${team}");
  }
}

class Player3 with Strong, QuickRunner, Tall {
  final Team team;

  Player3({
    required this.team,
    required String name
  });
}

void main() {
  var player = Player(name: "Kim", age: 27);
  player.walk();
  var player2  = Player2(team: Team.red, name: "p");
  player2.sayHello();
  var player3 = Player3(team: Team.blue, name: "hulk");
  player3.runQuick();
  print(player3.strenghtLevel);
}