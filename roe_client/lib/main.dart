import 'package:flutter/material.dart';
import 'package:xterm/xterm.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Client(),
    ),
  );
}

class Client extends StatefulWidget {
  const Client({super.key});

  @override
  State createState() => ClientState();
}

class ClientState extends State<Client> {
  bool isopod = false;
  final TerminalController controller = TerminalController();
  List<String> buffer = [];
  late final Terminal terminal = Terminal()
    ..write('OwO -> ')
    ..onOutput = (data) {
      switch (data.codeUnits.first) {
        case 127:
          {
            if (buffer.isNotEmpty) {
              buffer.removeLast();
              terminal
                ..buffer.backspace()
                ..buffer.deleteChars(1)
                ..write('');
            }
            break;
          }
        case 13:
          {
            if (buffer.join() == 'isopod') {
              setState(() {
                isopod = true;
              });
            }
            buffer.clear();
            terminal
              ..nextLine()
              ..write('OwO -> ');
            break;
          }
        default:
          {
            if (data.codeUnits.first > 31) {
              buffer.add(data);
              terminal.write(buffer.last);
            }
            break;
          }
      }
    };

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TerminalView(
              terminal,
              deleteDetection: true,
            ),
          ),
          if (isopod)
            Expanded(
              child: Image.network(
                "https://media.discordapp.net/attachments/861418729681321994/1100247396077813880/bug-isopod.gif?width=495&height=701",
              ),
            )
        ],
      ),
    );
  }
}
