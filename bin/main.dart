import 'dart:io';
import 'dart:isolate';

import 'package:hotreloader/hotreloader.dart';
import 'package:roe_server/src/login.dart';

void main() async {
  final HotReloader reloader = await HotReloader.create();
  for (var i = 1; i < 12; i++) {
    await Isolate.spawn(
      (_) async => await ServerSocket.bind('::', 8080, shared: true)
        ..listen(login),
      [i],
      debugName: i.toString(),
    );
  }
  while (true) {}
}