// Enums
enum Team { red, blue }

class Player {
  // final String name = "Sangyoon";
  // int xp = 1500;

  // late final String name;
  // late int xp;

  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  final String name;
  int xp, age;
  Team team;

  Player.fromJson(Map<String, dynamic> playerJson) :
    name = playerJson['name'],
    xp = playerJson['xp'],
    team = playerJson['team'],
    age = playerJson['age'];


  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player.createRedPlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = Team.red,
        this.xp = 0;

  void sayHello() {
    // You don't have to use this.name
    print("Hi my name is $name");
  }
}

void main() {
  // var player = Player();
  var player2 = Player(
    name: "Dave",
    xp: 3000,
    team: Team.blue,
    age: 27,
  );
  var Player3 = Player.createRedPlayer(
    name: "Lynn",
    age: 28,
  );
  print(player2.name);
  // player.name = "lksjf"; // Error : 'name' can't be used as a setter because it's final.
  // print(player.name);
  player2.sayHello();

  var apiData = [
    {
      "name": "Sang",
      "team": Team.red,
      "xp" : 0,
      "age" : 13,
    },
    {
      "name": "Yoon",
      "team": Team.blue,
      "xp" : 0,
      "age" : 17,
    },
    {
      "name": "Kim",
      "team": Team.red,
      "xp" : 0,
      "age" : 21,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });

  // *** Cascade Notation ***
  var potato = player2
  ..xp = 1200000
  ..team = Team.blue
  ..sayHello();
}
