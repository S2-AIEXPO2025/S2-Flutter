import 'package:expos2/widgets/chat_info.dart';
import 'package:flutter/material.dart';

class Info1Screen extends StatelessWidget {
  const Info1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChatInfo(
      imagePath: Image.asset('assets/images/icons/chatting_info/couple1.png'),
      title: '가정적인 연인',
      explain: '나에게 가족처럼 친절하게 잘 챙겨주는 연인을 만났다',
      write: '어릴 적부터 가족과 함께 시간을 보내는 것을 좋아했던 OOO은 이제 성숙한 연인으로 성장했다. '
          '그/그녀는 친구들과의 외출보다 주말마다 가족과 함께 요리하고,\n집안일을 나누며 소중한 시간을 보내는 것을 더 소중히 여긴다.\n\n OO은 연인과의 데이트에서도 그 가정적인 성향이 드러난다. '
          ' 그/그녀는 언제나 따뜻한 음식을 준비해주고, '
          '작은 소소한 이벤트를 통해 서로의 마음을 챙긴다.  OO의 생일이나 특별한 날에는 직접 만든 케이크와 함께 아늑한 저녁을 계획하는 것이 하늘의 낙이다. '
          '\n\nOO의 마음속에는 언제나 가족과의 추억이 자리 잡고 있다.  어린 시절, 부모님과 함께한 소풍이나, '
          '형제들과의 놀이가 OO에게 따뜻한 기억으로 남아 있다. 그래서 OO은 연인과의 관계에서도 그런 따뜻함을 이어가고 싶어 한다. \n\n'
          'OO은 연인에게도 언제나 따뜻한 관심을 기울이며, 그/그녀의 기분을 살피고 작은 배려를 아끼지 않는다. 가끔씩 힘든 일이 있을 때면,'
          ' OO은 OO의 곁에서 조용히 함께 있어주며 위로의 말을 건넨다. 이런 모습은 OO가 OO과 함께하는 것만으로도 큰 힘이 된다는 것을 잘 알고 있다.\n\n'
          '이처럼 OOO은 가정적인 성격을 통해 연인에게 따뜻한 사랑을 전하며, 그/그녀를 위한 작은 행복을 만들어가는 연인이다. OO의 마음속에는 언제나 사랑과 가족의 소중함이 함께하고 있다.'
      ,
    );
  }
}
