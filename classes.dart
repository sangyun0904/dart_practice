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
  int xp;

  Player (this.name, this.xp);

  void sayHello() {
    // You don't have to use this.name
    print("Hi my name is $name"); 
  }
}

void main() {
  // var player = Player();
  var player2 = Player("Dave", 3000);
  print(player2.name);
  // player.name = "lksjf"; // Error : 'name' can't be used as a setter because it's final.
  // print(player.name);
  player2.sayHello();
  
}