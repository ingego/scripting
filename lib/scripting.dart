// ignore_for_file: non_constant_identifier_names

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';

String? url;
Response? resp;
Future<void> envSetUp() async {
  url = r"https://www.leagueofgraphs.com/summoner/ru/Blitzo";
  resp = await Dio().get(url!);
}

String? _getTextFromHTMLById(String id, {required String HTML}) {
  BeautifulSoup sp = BeautifulSoup(HTML);

  return sp.find("div", id: id)?.getText();
}

String? _getTextFromHTMLByClass(String class_, {required String HTML}) {
  BeautifulSoup sp = BeautifulSoup(HTML);
  return sp.find("div", class_: class_)?.getText();
}

String? parseleagueTier() {
  return _getTextFromHTMLByClass("leagueTier", HTML: resp!.data);
}

String? parseAllGame() {
  return _getTextFromHTMLById("graphDD9", HTML: resp!.data);
}

String? parsewinRate() {
  return _getTextFromHTMLById("graphDD10", HTML: resp!.data);
}


/*

fun -> null fun; void setup();  
fun -> VAR; return -> break fun with parametrs ( var, const, hardCode, etc)





*/ 