import 'package:animal/animal/Animal.dart';
import 'package:animal/animal/Home.dart';

class Cat implements Animal, Home {
  @override
  String getKind() => "кошка";

  @override
  String getFood() => "рыбу";

  @override
  String getFunction() => "ловит мышей";
}
