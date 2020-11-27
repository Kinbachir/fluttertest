import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../Controller/SommeController.dart';

class Thred extends StatelessWidget {
  const Thred({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ThredView(),
    );
  }
}

class ThredView extends StatefulWidget {
  ThredView({Key key}) : super(key: key);
  final SommeController c = Get.put(SommeController());
  @override
  _ThredViewState createState() => _ThredViewState();
}

class _ThredViewState extends State<ThredView> {
  final SommeController c = Get.put(SommeController());
  GetStorage box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Count 1 : ${c.cont1.value}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Count 2 : ${c.cont2.value}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Somme = ${c.sum}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              RaisedButton.icon(
                color: Colors.red,
                textColor: Colors.white,
                icon: Icon(Icons.add),
                label: Text("cont 1".tr),
                onPressed: () {
                  setState(() {
                    c.increment();
                  });
                },
              ),
              RaisedButton.icon(
                color: Colors.red,
                textColor: Colors.white,
                icon: Icon(Icons.add),
                label: Text("cont 2".tr),
                onPressed: () {
                  setState(() {
                    c.increment2();
                  });
                },
              ),
              RaisedButton.icon(
                color: Colors.red,
                textColor: Colors.white,
                icon: Icon(Icons.clear),
                label: Text("reset".tr),
                onPressed: () {
                  setState(() {
                    c.clearNumber();
                  });
                },
              ),
              RaisedButton.icon(
                color: Colors.red,
                textColor: Colors.white,
                icon: Icon(Icons.add),
                label: Text("save".tr),
                onPressed: () {
                  setState(() {
                    box.write("cont1", c.cont1);
                    box.write("cont2", c.cont2);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
