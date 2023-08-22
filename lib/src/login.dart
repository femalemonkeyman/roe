import 'dart:io';
import 'dart:isolate';

void login(Socket event) {
  event.listen((final input) {
    event.write('${Isolate.current.debugName} > ');
  });
}
