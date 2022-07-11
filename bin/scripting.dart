import 'dart:developer';

import 'package:logger/logger.dart';
import 'package:scripting/scripting.dart';

void main(List<String> arguments) async {
  await envSetUp();
  var tier = parseleagueTier()!.replaceAll(" ", "").replaceAll("\n", "");
  var allGame = parseAllGame()!.replaceAll(" ", "").replaceAll("\n", "");
  var winRate = parsewinRate()!.replaceAll(" ", "").replaceAll("\n", "");
  print(''' 
          tier = $tier
          Games = $allGame
          Win Rate = $winRate
        ''');
}
