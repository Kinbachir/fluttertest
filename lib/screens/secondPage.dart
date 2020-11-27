import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScendPageView(),
    );
  }
}

class ScendPageView extends StatefulWidget {
  ScendPageView({Key key}) : super(key: key);

  @override
  _ScendPageViewState createState() => _ScendPageViewState();
}

class _ScendPageViewState extends State<ScendPageView> {
  @override
  Widget build(BuildContext context) {
    GetStorage box = GetStorage();
    return Scaffold(
      appBar: AppBar(title: Text("title".trArgs(['John']))),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton.icon(
              color: Colors.green,
              textColor: Colors.white,
              icon: Icon(Icons.g_translate_outlined),
              label: Text("back".tr),
              onPressed: () {
                box.erase();
                Get.offAllNamed("/main");
              },
            ),
            RaisedButton.icon(
              color: Colors.green,
              textColor: Colors.white,
              icon: Icon(Icons.g_translate_outlined),
              label: Text("next".tr),
              onPressed: () {
                Get.toNamed("/thred");
              },
            ),
          ],
        ),
      ),
    );
  }
}
