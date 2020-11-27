import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:testflutter/screens/secondPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MainView(),
    );
  }
}

class MainView extends StatefulWidget {
  MainView({Key key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailCotroller = new TextEditingController();
    GetStorage box = GetStorage();
    box.writeIfNull("email", "test email");

    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text("title".trArgs(['John']))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
            box.write("email", emailCotroller.text);
            Get.offAll(SecondPage());
          },
          label: Text('next'.tr),
          icon: Icon(Icons.arrow_right_outlined),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: emailCotroller,
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text("valide".tr),
                onPressed: () {
                  GetUtils.isEmail(box.read("email"))
                      ? Get.snackbar(
                          "Correct".tr,
                          "FormatG".tr,
                          backgroundColor: Colors.green,
                          snackPosition: SnackPosition.BOTTOM,
                        )
                      : Get.snackbar(
                          "inCorrect".tr,
                          "FormatB".tr,
                          backgroundColor: Colors.red,
                          snackPosition: SnackPosition.TOP,
                        );
                },
              ),
              SizedBox(height: 30),
              RaisedButton.icon(
                color: Colors.green,
                textColor: Colors.white,
                icon: Icon(Icons.g_translate_outlined),
                label: Text("traduction france".tr),
                onPressed: () {
                  Get.updateLocale(Locale('fr'));
                },
              ),
              SizedBox(height: 30),
              RaisedButton.icon(
                color: Colors.green,
                textColor: Colors.white,
                icon: Icon(Icons.g_translate_outlined),
                label: Text("traduction english".tr),
                onPressed: () {
                  Get.updateLocale(Locale('en'));
                },
              ),
              SizedBox(height: 30),
              RaisedButton.icon(
                color: Colors.green,
                textColor: Colors.white,
                icon: Icon(Icons.g_translate_outlined),
                label: Text("traduction device".tr),
                onPressed: () {
                  Get.updateLocale(Get.deviceLocale);
                },
              ),
              SizedBox(height: 30),
              RaisedButton.icon(
                color: Colors.green,
                textColor: Colors.white,
                icon: Icon(Icons.g_translate_outlined),
                label: Text("traduction arabe".tr),
                onPressed: () {
                  Get.updateLocale(Locale("ar"));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
