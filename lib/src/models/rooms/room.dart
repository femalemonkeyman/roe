import 'package:isar/isar.dart';
import 'package:roe_server/src/models/character.dart';
import 'package:roe_server/src/models/items/item.dart';

part 'room.g.dart';

@collection
class Room {
  final int id;
  final String name;
  final List<Item> items = [];
  final List<Character> players = [];
  Room(this.id, {this.name = ''});
}
