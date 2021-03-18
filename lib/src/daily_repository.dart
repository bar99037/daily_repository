import 'package:universal_html/controller.dart';

import 'models/daily.dart';

class DailyRepository {

  Future<Daily> getDaily() async{
    final controller = WindowController();
    await controller.openHttp(
        uri: Uri.parse("https://tw.feature.appledaily.com/collection/dailyquote")
    );
    final content = controller.window.document.querySelector(".rwdfix");
    String motto = content.querySelectorAll("p")[1].innerHtml.replaceAll("<br>", "\n");
    final provenance = content.querySelector("h1").text.trimLeft().trimRight();
    return Daily(motto, provenance);
  }
}
