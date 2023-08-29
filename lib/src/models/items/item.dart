import 'package:isar/isar.dart';

part 'item.g.dart';

@embedded
class Item {
  final ItemType type;
  final String name;
  final String description;
  final String effect;
  const Item({
    this.type = ItemType.nothing,
    this.name = '',
    this.description = '',
    this.effect = '',
  });
}

enum ItemType {
  ring,
  weapon,
  consumable,
  clothing,
  armour,
  nothing,
}
