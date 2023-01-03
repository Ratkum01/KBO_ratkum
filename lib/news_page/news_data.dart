import 'package:flutter/cupertino.dart';
import 'package:school_aul/news_page/news_model.dart';

class FakeDate {
  static List<String> categories = [
    "Білім",
    "Конкурс",
    "Жарнама",
    "Спорт",
    "Үкімет"
  ];
  static List<NewsModel> news_menu = [
    NewsModel(
        "https://tengrinews.kz/userdata/news/2022/news_479631/thumb_m/photo_408912.jpeg",
        "Касым-Жомарт Токаев посетил педагогический колледж ",
        "KazNEWS",
        "25.10.2022"),
    NewsModel(
        "https://tengrinews.kz/userdata/news/2022/news_470531/thumb_m/photo_399563.jpeg",
        "Шесть американских вузов пригласили на учебу школьника из Казахстана",
        "KazNEWS",
        "25.10.2022"),
    NewsModel(
        "https://tengrinews.kz/userdata/news/2022/news_469835/thumb_m/photo_397804.jpeg",
        "Гранты на 70 тысяч долларов предложили мировые вузы казахстанской школьнице",
        "KazNEWS",
        "25.10.2022")
  ];
}
