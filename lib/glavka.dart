import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_aul/raspis.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Glavka extends StatefulWidget {
  const Glavka({super.key});

  @override
  State<Glavka> createState() => _GlavkaState();
}

class _GlavkaState extends State<Glavka> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 50),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            // проверка дошли ли мы до последнего СТР

            setState(() => isLastPage = index == 2);
          },
          children: [
            Container(
              color: Color.fromARGB(248, 248, 231, 255),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/ibray.png',
                      height: 300,
                    ),
                    Text(
                      'K.B.O',
                      style: GoogleFonts.nerkoOne(
                          textStyle: TextStyle(
                              color: Color.fromARGB(248, 120, 66, 154),
                              letterSpacing: .5,
                              fontSize: 150)),
                    ),
                    Text(
                      'kel balalar oqiliq',
                      style: GoogleFonts.dancingScript(
                          textStyle: TextStyle(
                              color: Color.fromARGB(248, 120, 66, 154),
                              letterSpacing: .5,
                              fontSize: 30)),
                    ),
                  ]),
            ),
            Container(
              color: Color.fromARGB(248, 248, 231, 255),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Row(
                  
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      Column(children: [
                        Image.asset(
                          'assets/images/ibray.png',
                          height: 100,
                        ),
                      ]),
                      Column(children: [
                        Text(
                          'K.B.O',
                          style: GoogleFonts.nerkoOne(
                              textStyle: TextStyle(
                                  color: Color.fromARGB(248, 120, 66, 154),
                                  letterSpacing: .5,
                                  fontSize: 50)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'kel balalar oqylyq',
                          style: TextStyle(
                            color: Color.fromARGB(248, 120, 66, 154),
                            fontSize: 20,
                          ),
                        ),
                      ]),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(height: 10,),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container( color: Color.fromARGB(248, 120, 66, 154),
                      
                      ),
                      Column()
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(248, 248, 231, 255),
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/ibray.png',
                        height: 100,
                      ),
                      Text(
                        'K.B.O',
                        style: GoogleFonts.nerkoOne(
                            textStyle: TextStyle(
                                color: Color.fromARGB(248, 120, 66, 154),
                                letterSpacing: .5,
                                fontSize: 50)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'kel balalar oqylyq',
                        style: TextStyle(
                          color: Color.fromARGB(248, 120, 66, 154),
                          fontSize: 20,
                        ),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  foregroundColor: Color.fromARGB(255, 20, 13, 13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                  textStyle: const TextStyle(fontSize: 10),
                  backgroundColor: Color.fromARGB(248, 120, 66, 154),
                  minimumSize: const Size.fromHeight(10),
                  fixedSize: Size.fromWidth(10)),
              onPressed: () async {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Raspis()));
              },
              child: const Text(
                'GET GET',
                style: TextStyle(fontSize: 20),
              ),
            )
          : Container(
              color: Color.fromARGB(248, 248, 231, 255),
              // padding: const EdgeInsets.symmetric(),
              height: 50,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () => controller.jumpToPage(2),
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              color: Color.fromARGB(248, 147, 97, 177),
                              fontWeight: FontWeight.bold),
                        )),
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: WormEffect(
                          spacing: 16,
                          dotColor: Color.fromARGB(248, 227, 179, 255),
                          activeDotColor: Color.fromARGB(248, 147, 97, 177),
                        ),
                        onDotClicked: ((index) => controller.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            )),
                      ),
                    ),
                    TextButton(
                        onPressed: () => controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut),
                        child: const Text(
                          'NEXT',
                          style: TextStyle(
                              color: Color.fromARGB(248, 147, 97, 177),
                              fontWeight: FontWeight.bold),
                        ))
                  ]),
            ),
    );
  }
}
