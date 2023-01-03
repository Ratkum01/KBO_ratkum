import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

class News_page extends StatefulWidget {
  const News_page({Key? key}) : super(key: key);
  // final String title;
  @override
  State<News_page> createState() => _News_pageState();
}

class _News_pageState extends State<News_page> {
  List<CarouselItem> itemList = [
        CarouselItem(
          image: const NetworkImage(
            'https://tengrinews.kz/userdata/news/2022/news_479631/thumb_m/photo_408912.jpeg',
          ),
          boxDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
              colors: [
                Color.fromARGB(248, 120, 66, 154).withOpacity(1),
                Color.fromARGB(255, 29, 29, 29).withOpacity(.3),
              ],
              stops: const [0.0, 1.0], //прозрачность
            ),
          ),
          title: 'Касым-Жомарт Токаев посетил педагогический колледж',
          titleTextStyle: const TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
          leftSubtitle: '13 ноябрь 2022',
          rightSubtitle: 'KazNews',
          leftSubtitleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          rightSubtitleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          onImageTap: (i) {},
        ),
        CarouselItem(
          image: const NetworkImage(
            'https://tengrinews.kz/userdata/news/2022/news_470531/thumb_m/photo_399563.jpeg',
          ),
          boxDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
              colors: [
                Color.fromARGB(248, 120, 66, 154).withOpacity(1),
                Color.fromARGB(255, 29, 29, 29).withOpacity(.3),
              ],
              stops: const [0.0, 1.0],
            ),
          ),
          title:
              'Шесть американских вузов пригласили на учебу школьника из Казахстана',
          titleTextStyle: const TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
          leftSubtitle: '11 Сентябрья 2022',
          rightSubtitle: 'JanaGANA',
          leftSubtitleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          rightSubtitleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          onImageTap: (i) {},
        ),
        
      ],
      //NEWS   2222222222222
      itemList2 = [
        CarouselItem(
          //REKLAMA
          image: const NetworkImage(
            'https://sun9-32.userapi.com/impg/SXoWPBbg1fh6F1-Ox6hQcj91ufIB6gPePmVK3A/_FfDGqbKWcY.jpg?size=805x589&quality=95&sign=2728df6737820d3dd924c5d4ca2be7c2&type=album',
          ),
          boxDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
              colors: [
                Color.fromARGB(255, 29, 29, 29).withOpacity(1),
                Color.fromARGB(255, 143, 0, 0).withOpacity(.3),
              ],
              stops: const [0.0, 1.0], //прозрачность
            ),
          ),
          title: 'Стань Python-разработчиком',
          titleTextStyle: TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
          leftSubtitle: 'РЕКЛАМА',
          leftSubtitleTextStyle: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
          rightSubtitle: 'EZ ENGLISH',
          rightSubtitleTextStyle: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
          onImageTap: (i) {},
        ),
        
      ],
      // 3333333333333333333333333333
      itemList3 = [
        CarouselItem(
          image: const NetworkImage(
            'https://tengrinews.kz/userdata/news/2022/news_482013/thumb_m/photo_411685.png',
          ),
          boxDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
              colors: [
                Color.fromARGB(248, 120, 66, 154).withOpacity(1),
                Color.fromARGB(255, 29, 29, 29).withOpacity(.3),
              ],
              stops: const [0.0, 1.0], //прозрачность
            ),
          ),
          title: 'Приказ о школьной форме хотят изменить в Казахстане',
          titleTextStyle: const TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          leftSubtitle: '14 Ноябрья',
          rightSubtitle: 'RatkuMLIFE',
          leftSubtitleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          rightSubtitleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          onImageTap: (i) {},
        ),
        // 
        CarouselItem(
          image: const NetworkImage(
            'https://tengrinews.kz/userdata/news/2022/news_480865/thumb_m/photo_410308.jpeg',
          ),
          boxDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
              colors: [
                Color.fromARGB(248, 120, 66, 154).withOpacity(1),
                Color.fromARGB(255, 29, 29, 29).withOpacity(.3),
              ],
              stops: const [0.0, 1.0],
            ),
          ),
          title: 'В казахстанских школах введут антибуллинговые правила',
          titleTextStyle: const TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          leftSubtitle: '1 Октябрья',
          rightSubtitle: 'Shoke',
          leftSubtitleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          rightSubtitleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          onImageTap: (i) {},
        ),
      ],
  itemList4 = [
         CarouselItem(
          image: const NetworkImage(
            'https://sun9-61.userapi.com/impg/aH9IStWQxXFElAL64EEB00rJkF3egYTrptC5ew/GKcXqpNzpKQ.jpg?size=732x528&quality=95&sign=83dfbe03f22dfe5d75e3003e2f3f0e29&type=album',
          ),
          boxDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
              colors: [
                Color.fromARGB(255, 29, 29, 29).withOpacity(1),
                Color.fromARGB(255, 143, 0, 0).withOpacity(.3),
              ],
              stops: const [0.0, 1.0],
            ),
          ),
          title:
              'Изучайте английский на интерактивной онлайн платформе по программам Оксфорда и Кембриджа',
          titleTextStyle: TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
          leftSubtitle: 'РЕКЛАМА',
          leftSubtitleTextStyle: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
          rightSubtitle: 'EZ ENGLISH',
          rightSubtitleTextStyle: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
          onImageTap: (i) {},
        ),
        
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Column(
                children: [
                  // Text(
                  //   'НОВОСТИ ДНЯ',
                  //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(height: 10),
                  CustomCarouselSlider(
                    items: itemList,
                    height: 200,
                    subHeight: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    autoplay: true,
                  ),
                  // Text(
                  //   'РЕКЛАМА',
                  //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(height: 10),
                  CustomCarouselSlider(
                    items: itemList2,
                    height: 200,
                    subHeight: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    autoplay: true,
                  ),
                  // Text(
                  //   'РЕКЛАМА',
                  //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(height: 10),
                  CustomCarouselSlider(
                    items: itemList3,
                    height: 200,
                    subHeight: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    autoplay: true,
                  ),
                  // SizedBox(height: 10),
                  // CustomCarouselSlider(
                  //   items: itemList4,
                  //   height: 200,
                  //   subHeight: 50,
                  //   width: MediaQuery.of(context).size.width * .9,
                  //   autoplay: true,
                  // ),
                  SizedBox(height: 10),
                  CustomCarouselSlider(
                    items: itemList4,
                    height: 200,
                    subHeight: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    autoplay: true,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Column(
              //   children: [
              //     const Text('Show Only Customize Indicators'),
              //     CustomCarouselSlider(
              //       items: itemList,
              //       height: 150,
              //       subHeight: 50,
              //       width: MediaQuery.of(context).size.width * .9,
              //       autoplay: false,
              //       showText: false,
              //       showSubBackground: false,
              //       indicatorShape: BoxShape.rectangle,
              //       selectedDotColor: Colors.red,
              //       unselectedDotColor: Colors.white,
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 20),
              // Column(
              //   children: [
              //     const Text('Show only images and Autoplay'),
              //     CustomCarouselSlider(
              //       items: itemList,
              //       height: 150,
              //       subHeight: 50,
              //       width: MediaQuery.of(context).size.width * .9,
              //       autoplay: true,
              //       showSubBackground: false,
              //       // showIndicator: false,
              //       showText: false,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
