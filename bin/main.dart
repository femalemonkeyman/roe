import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:isar/isar.dart';
import 'package:roe_server/src/models/account.dart';
import 'package:roe_server/src/models/character.dart';

Future<void> main(List<String> args) async {
  await Isar.initialize('${Directory.current.path}/libisar.so');
  Isar.open(
      schemas: [AccountSchema], directory: Directory.current.path, name: 'roe');
  final List<Isolate> threads = List.unmodifiable(
    [
      for (int i = 1; i <= 12; i++)
        await Isolate.spawn(execute, [], debugName: 'Thread $i'),
    ],
  );
  while (true) {}
}

void execute(List args) async {
  await Isar.initialize('${Directory.current.path}/libisar.so');
  final Isar isar = Isar.get(schemas: [AccountSchema], name: 'roe');
  final socket = await ServerSocket.bind('::', 8080, shared: true);
  socket.listen((event) {
    event.writeln('Welcome, please login or create an account.');
    event.write('Please enter your username > ');
    event.listen((message) {
      print(message);
      event.write(' > ');
    });
  }, onError: (error) {
    print(error);
  });
}
