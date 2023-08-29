import 'package:bcrypt/bcrypt.dart';
import 'package:isar/isar.dart';
import 'package:roe_server/src/models/character.dart';
import 'package:roe_server/src/models/items/item.dart';
import 'package:uuid/uuid.dart';

part 'account.g.dart';

@collection
class Account {
  @id
  late final String uuid = Uuid().v5(Uuid.NAMESPACE_URL, 'roe.owo.test');
  final String username;
  final String password;
  final List<Character> characters = [];

  Account({required this.username, required String password})
      : password = BCrypt.hashpw(password, BCrypt.gensalt()) {}
}
