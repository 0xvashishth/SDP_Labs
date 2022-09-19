import 'package:lab5_tutorial2/lab5_tutorial2.dart' as lab5_tutorial2;

enum Grade { A, B, C, D, E, F }

// There are 2 types of classes:
// 1. Abstract class (We can't create an object of this class)
// 2. Concrete class

class Person {
  Person(this.givnName, this.sname);
  String givnName;
  String sname;
  String get fname => '${givnName} ${sname}';

  @override
  String toString() => fname;
}

class Student extends Person {
  Student(String givnName, String sname) : super(givnName, sname);
  // If you use an initializer list, the call to super always goes last, that is, after assert statements and initializers.
  // Calling super(void) is actually unnecessary, because Dart always calls the default constructor for the super class if there are no arguments to pass. The reason that you or Dart always need to make the super call is to ensure that all of the field values have finished initializing.
  var grades = <Grade>[];
  @override
  String get fname => '$givnName, $sname';
}

// Multilevel hierarchy
class Sportsman extends Student {
  Sportsman(String givnName, String sname)
      : super(givnName, sname);
  static const minimumPracticeSessionTime = 2;
}

// Sibling
class Captain extends Student {
  Captain(String givnName, String sname) : super(givnName, sname);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}


// mini-exercise
/// 1.
class Fruit {
  Fruit(this.color);
  String color;
  void describeColor() {
    print(color);
  }
}

/// 2.
class Melon extends Fruit {
  Melon(color) : super(color);
}

class Watermelon extends Melon {
  Watermelon(color) : super(color);
}

/// 3.
class Watermelon2 extends Melon {
  Watermelon2(color) : super(color);
  @override
  void describeColor() {
    print('$color in watermelon class');
  }
}

class Cantaloupe extends Melon {
  Cantaloupe(color) : super(color);
}

/// ABSTRACT CLASS in dart

abstract class Animal {
  bool isAlive = true;
  // only method definitions are allowed inside abstract class
  void move();
  void eat();
  @override
  String toString() {
    return "I am a $runtimeType";
  }
}

// Overriding parent class methods inside the child classes
class Platypus extends Animal {
  @override
  void eat() {
    print("munch munch");
  }

  @override
  void move() {
    print("Glide glide");
  }

  void layEggs() {
    print('Plop plop');
  }
}

abstract class DataRepository {
  double? fetchTemperature(String city);
}

class WebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

void main(List<String> arguments) {

  final john = Person("John", "Smith");
  
  final alexa = Student("Alexa", "Bliss");
  
  final brock = Captain('Brock', 'Lesner');
  final dolph = Captain('Dolph', 'Ziggler');
  
  print(john.fname);
  print(alexa.fname);
  
  final historyGrade = Grade.B;
  alexa.grades.add(historyGrade);
  
  final students = [alexa, brock, dolph];
  print(brock is Object);
  print(brock is Person);
  print(brock is Student);
  print(brock is Sportsman);
  print(brock is! Captain);

  Animal platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  print(platypus);
}
