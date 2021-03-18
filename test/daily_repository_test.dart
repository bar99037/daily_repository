import 'package:flutter_test/flutter_test.dart';

import 'package:daily_repository/daily_repository.dart';

void main(){
  group('test getDaily', (){
    test('test mtto contain expectMotto', () async{
      final dailyRepository = DailyRepository();
      Daily daily = await dailyRepository.getDaily();
      //3/18號抓取的每日一句，測時時請修改變數內容為當日每日一句
      String expectMotto = "眼睛要美麗，得能看到別人的好";
      expect(true, daily.motto.contains(expectMotto));
    });

    test('test mtto not contain expectMoot', () async{
      final dailyRepository = DailyRepository();
      Daily daily = await dailyRepository.getDaily();
      String expectMotto = "每日一句";
      expect(false, daily.motto.contains(expectMotto));
    });
  });
}
