import 'package:expos2/core/constants/base_url.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

class ChatSocketService1 {
  WebSocketChannel? _channel;
  Function(String message)? onMessageCallback;

  void connect({required Function(String message) onMessage}) {
    final uri = Uri.parse(
      '$BaseUrl/ws?gender=남자&lover_option=가정적&name=홍길동',
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
