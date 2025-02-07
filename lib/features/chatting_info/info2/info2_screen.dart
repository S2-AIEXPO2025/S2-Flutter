import 'package:expos2/widgets/chat_info.dart';
import 'package:flutter/material.dart';

class Info2Screen extends StatelessWidget {
  const Info2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChatInfo(
        imagePath: Image.asset('assets/images/icons/chatting_info/couple2.png'),
        title: '친구같은 연인',
        explain: '친구처럼 편하고 장난치는 연인을 만났다',
        write: '과거 함께 웃고 울던 친구, OOO는 이제 서로를 진정으로 이해하는 연인으로 자리 잡았다. 어린 시절, 그/그녀는 언제나 주변을 밝히는 태양 같은 존재였다. 남다른 유머 감각과 따뜻한 마음씨로 친구들에게 사랑받던 그/그녀였지만, 시간이 흐르며 그/그녀의 내면은 조금씩 변화하기 시작했다. \n\n'
            'OO는 연인과의 관계에서도 그 친구같은 면모를 잃지 않았다. 언제나 편안한 대화와 함께 서로의 소소한 일상에 귀 기울이며, 진정한 친구처럼 지내는 것이 그의 매력이다. 주말마다 함께 영화관에 가거나, 도심의 작은 카페에서 오랜 이야기꽃을 피우는 것이 그들의 일상이었다. \n\n'
            '그/그녀는 연인에게 작은 선물이나 편지를 통해 마음을 전하는 것을 좋아한다. 특별한 날이 아니더라도, 그냥 생각이 나서 전하는 메시지는 그들의 관계를 더욱 깊게 만들어준다. 가끔씩은 서로의 장난에 웃음을 터뜨리며, 어린 시절의 순수함을 잊지 않고 있다. \n\n'
            'OO의 마음속에는 과거의 친구 같은 소중한 기억들이 여전히 살아 숨 쉬고 있다. 그/그녀와 연인 사이의 유대는 단순한 사랑 이상의 의미를 지닌다. 서로의 기쁨과 슬픔을 나누며, 그들은 함께 성장해 나가는 친구이자 연인으로서의 여정을 이어가고 있다. \n\n'
            '가끔씩 깊은 대화를 나누며, 미래에 대한 꿈과 희망을 나누는 그들의 모습은 마치 소중한 친구들이 다시 만난 듯한 따뜻함을 느끼게 한다. OOO는 연인이라는 이름 아래, 여전히 친구 같은 사랑을 이어가고 있다. '
    );
  }
}
