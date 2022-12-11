void main() {
  print('hello world');

  // Variables

  // dynamic : can contain any types of variables
  dynamic dyna_val = "Sangyoon";
  dyna_val = 27;
  dyna_val = false;

  // var : dynamic type as default, can initialize any types of variable
  var var_val; // dynamic
  var_val = "Sangyoon";
  var_val = 27;
  var_val = true;

  var var_name = "Sangyoon";
  // var_name = 27; // Error : A value of type 'int' can't be assigned to a variable of type 'String'.


  String name = "Sangyoon";
  int age = 27;
  bool man = true; 
  double pi = 3.14; // etc

  // null safety
  // Null safety prevents errors that result from unintentional access of variables set to null.
  // variables are ‘non-nullable’ by default you can change it nullable by adding '?'
  String? val_nullable = "hello";
  val_nullable = null;
  // val_nullable.length; // Error : The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
  if (val_nullable != null) {
    val_nullable.length;
  }
  
  // Final Variable
  final double fin_val = 3.14;
  // fin_val = 1; // Error : The final variable 'fin_val' can only be set once.

  // constant variable 
  // You can’t change the value of a const variable.
  // Use const for variables that you want to be compile-time constants : const variable should already have value before the compile?
  const const_val = "value";
}

// Late Variable 
// Declaring a non-nullable variable that’s initialized after its declaration.
// Lazily initializing a variable.
// String key; // Error : The non-nullable variable 'key' must be initialized.
late String key;
late final api_key;