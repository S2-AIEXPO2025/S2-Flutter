import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

class ChatSocketService {
  WebSocketChannel? _channel;
  Function(String message)? onMessageCallback;

  void connect({required Function(String message) onMessage}) {
    final uri = Uri.parse(
      'ws://192.168.1.84:3060/ws?gender=남자&lover_option=다정한&name=서예린',
    );

    _channel = WebSocketChannel.connect(uri);
    onMessageCallback = onMessage;

    _channel!.stream.listen(
          (message) => onMessage(message),
      onDone: () => print('WebSocket 연결 종료됨'),
      onError: (error) => print('WebSocket 에러: $error'),
    );
  }

  void sendMessage(String message) {
    _channel?.sink.add(message);
  }

  void disconnect() {
    _channel?.sink.close(status.normalClosure);
  }
}
