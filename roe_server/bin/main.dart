import 'dart:io';
import 'dart:isolate';

import 'package:hotreloader/hotreloader.dart';

void main() async {
  final HotReloader reloader = await HotReloader.create();
  for (var i = 1; i < 12; i++) {
    await Isolate.spawn(
      (_) async => await ServerSocket.bind('::', 8080, shared: true)
        ..listen((event) {
          event.listen((final input) {
            event.write('${Isolate.current.debugName} > ');
          });
        }),
      [i],
      debugName: i.toString(),
    );
  }
  while (true) {}
}
