import 'package:expos2/core/router.dart';
import 'package:expos2/core/s2_textstyle.dart';
import 'package:expos2/core/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreenSliderWidget extends StatefulWidget {
  const MainScreenSliderWidget({super.key});

  @override
  State<MainScreenSliderWidget> createState() => _MainScreenSliderWidgetState();
}

class _MainScreenSliderWidgetState extends State<MainScreenSliderWidget> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 382,
          padding: const EdgeInsets.only(left: 22, right: 22, top: 17, bottom: 17),
          decoration: BoxDecoration(
              color: S2Color.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: PageView(
            controller: _pageController,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      context.push('/info1');
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/icons/main/couple1.png', width: 134, height: 72,),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('가정적인 연인', style: S2TextStyle.medium13(color: S2Color.black),),
                            Text('남자 | 여자', style: S2TextStyle.regular10(color: S2Color.gray01),),
                            const SizedBox(height: 8,),
                            Text('가정적인 여자친구 or 남자친구와\n대화할 수 있어요!', style: S2TextStyle.regular10(color: S2Color.gray01),)
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      context.push('/info2');
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/icons/main/couple2.png', width: 134, height: 72,),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('친구같은 연인', style: S2TextStyle.medium13(color: S2Color.black),),
                            Text('남자 | 여자', style: S2TextStyle.regular10(color: S2Color.gray01),),
                            const SizedBox(height: 8,),
                            Text('친구같은 여자친구 or 남자친구와\n대화할 수 있어요!', style: S2TextStyle.regular10(color: S2Color.gray01),)
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      context.push('/info3');
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/icons/main/couple3.png', width: 134, height: 72,),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('귀여운 연인', style: S2TextStyle.medium13(color: S2Color.black),),
                            Text('남자 | 여자', style: S2TextStyle.regular10(color: S2Color.gray01),),
                            const SizedBox(height: 8,),
                            Text('귀여운 여자친구 or 남자친구와\n대화할 수 있어요!', style: S2TextStyle.regular10(color: S2Color.gray01),)
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      context.push('/info4');
                    },
                    child:  Row(
                      children: [
                        Image.asset('assets/images/icons/main/couple4.png', width: 134, height: 72,),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('활발한 연인', style: S2TextStyle.medium13(color: S2Color.black),),
                            Text('남자 | 여자', style: S2TextStyle.regular10(color: S2Color.gray01),),
                            const SizedBox(height: 8,),
                            Text('활발한 여자친구 or 남자친구와\n대화할 수 있어요!', style: S2TextStyle.regular10(color: S2Color.gray01),)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      context.push('/info5');
                    },
                    child:  Row(
                      children: [
                        Image.asset('assets/images/icons/main/couple5.png', width: 134, height: 72,),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('나를 귀여워하는 연인', style: S2TextStyle.medium13(color: S2Color.black),),
                            Text('남자 | 여자', style: S2TextStyle.regular10(color: S2Color.gray01),),
                            const SizedBox(height: 8,),
                            Text('나를 귀여워하는 여자친구 or 남자친구와\n대화할 수 있어요!', style: S2TextStyle.regular10(color: S2Color.gray01),)
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: (){
                      context.push('/info6');
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/icons/main/couple6.png', width: 134, height: 72,),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('사극체 연인', style: S2TextStyle.medium13(color: S2Color.black),),
                            Text('남자 | 여자', style: S2TextStyle.regular10(color: S2Color.gray01),),
                            const SizedBox(height: 8,),
                            Text('사극체인 여자친구 or 남자친구와\n대화할 수 있어요!', style: S2TextStyle.regular10(color: S2Color.gray01),)
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: (){
                      context.push('/info7');
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/icons/main/couple7.png', width: 134, height: 72,),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('츤데레 연인', style: S2TextStyle.medium13(color: S2Color.black),),
                            Text('남자 | 여자', style: S2TextStyle.regular10(color: S2Color.gray01),),
                            const SizedBox(height: 8,),
                            Text('츤데레 여자친구 or 남자친구와\n대화할 수 있어요!', style: S2TextStyle.regular10(color: S2Color.gray01),)
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: (){
                      context.push('/info8');
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/icons/main/couple8.png', width: 134, height: 72,),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('보호하고 싶은 연인', style: S2TextStyle.medium13(color: S2Color.black),),
                            Text('남자 | 여자', style: S2TextStyle.regular10(color: S2Color.gray01),),
                            const SizedBox(height: 8,),
                            Text('보호하고 싶은 여자친구 or 남자친구와\n대화할 수 있어요!', style: S2TextStyle.regular10(color: S2Color.gray01),)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SmoothPageIndicator(
          controller: _pageController,
          count: 2,
          effect: ExpandingDotsEffect(
              dotHeight: 6,
              dotWidth: 6,
              dotColor: S2Color.gray03,
              activeDotColor: S2Color.gray02
          ),
        ),
      ],
    );
  }
}
