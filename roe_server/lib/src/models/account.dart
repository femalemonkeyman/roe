import 'package:isar/isar.dart';

part 'account.g.dart';

@collection
class Account {
  final Id id = Isar.autoIncrement;
  late final String uuid;
  final String username;
  final String password;

  Account({required this.username, required String password})
      : password = password.toLowerCase() {}
}
