import 'package:isar/isar.dart';
import 'package:roe_server/src/models/items/clothes.dart';
import 'package:roe_server/src/models/items/item.dart';
import 'constants.dart';

part 'character.g.dart';

@embedded
class Character {
  String name;
  final int health = 100;
  final int stamina = 100;
  final int strength = 10;
  final int endurance = 10;
  final int mind = 10;
  final List<Item> inventory = [];
  final List<Proficiencies> proficiency = [];
  final List<Conditions> status = [];
  final Map<String, dynamic> body = {};
  bool online = false;
  int strengthEx = 0;
  int enduranceEx = 0;
  int mindEx = 0;

  Character({this.name = ''});

  void equip() {}

  void move() {}

  void pickup() {}

  void drop() {}
}

class Hand {
  Item thumb = const Item();
  Item index = const Item();
  Item middle = const Item();
  Item ring = const Item();
  Item pinky = const Item();
  Item holding = const Item();
}
