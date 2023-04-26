import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';

Handler get onRequest {
  return webSocketHandler((channel, protocol) {
    channel.stream.listen((event) {
      channel.sink.add(event.runtimeType.toString());
      print(event.runtimeType);
    });
  });
}
