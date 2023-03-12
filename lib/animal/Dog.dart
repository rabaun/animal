import 'Animal.dart';
import 'Home.dart';

class Dog implements Animal, Home {
  @override
  String getKind() => "собака";

  @override
  String getFood() => "мясо";

  @override
  String getFunction() => "охраняет дом";
}
