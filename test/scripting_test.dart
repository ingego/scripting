import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:scripting/scripting.dart';
import 'package:test/test.dart';

// TDD  ( Test Drivern Devvelopment)
// TEST -> Intg -> Prod

/*

* Unit test = ДОХУЯ ВСЕГДА ДОХУЯ. (мальнкие функции )
! !Widget Test  - ЧУТЬ МЕНЬШЕ, ЧЕМ ДОХУЯ 
? Intg test - МЕНЬШЕ ВСЕГО !!! САМЫЕ ВАЖНЫЕ 

*/
void main() {
  group("parser", () {
    setUp(() async {
      await envSetUp();
    });
    group("UNIT TEST", () {
      test('setUp', () {
        expect(url, url!);
        expect(resp, resp!);
      });

      test("Parse leagueTier", () {
        var tier = parseleagueTier();
        expect(tier, tier!);
      });
      test("Parse allGame", () {
        var allGame = parseAllGame();
        expect(allGame, allGame!);
      });
      test("Parse winRate", () {
        var allGame = parsewinRate();
        expect(allGame, allGame!);
      });
    });

    group("Int test", () {
      test("Get game  data", () {
        var tier = parseleagueTier()!.replaceAll(" ", "").replaceAll("\n", "");
        var allGame = parseAllGame()!.replaceAll(" ", "").replaceAll("\n", "");
        var winRate = parsewinRate()!.replaceAll(" ", "").replaceAll("\n", "");
        Logger().d(''' 
          tier = $tier
          Games = $allGame
          Win Rate = $winRate
        ''');
      });
    });
  });
  // group("SYNC ASYNC", () {
  //   test("sync get data", () {
  //     Logger().d(3 + 5);
  //     sleep(Duration(milliseconds: 1200));
  //     Logger().d("s" + "ss");
  //     sleep(Duration(milliseconds: 600));
  //     Logger().d("s" + "ss");
  //     sleep(Duration(milliseconds: 600));
  //   });
  //   test("async get data", () async {
  //     Logger().d(3 + 5);
  //     var futureDelayedOneFunct = Future.delayed(Duration(milliseconds: 1200));
  //     Logger().d("s" + "ss");
  //     var futureDelayedTwoFunct = Future.delayed(Duration(milliseconds: 600));
  //     Logger().d("s" + "ss");
  //     var futureDelayedTheerFunct = Future.delayed(Duration(milliseconds: 600));

  //     await Future.wait([
  //       futureDelayedOneFunct,
  //       futureDelayedTwoFunct,
  //       futureDelayedTheerFunct
  //     ]);
  //   });
  // });
}
