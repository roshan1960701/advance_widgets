import 'package:flutter/material.dart';

class myData with ChangeNotifier {
  int num = 0;
  int get count => num;
  int cityN = 0;
  String userName='';

  void changeData() async {
    num++;
    notifyListeners();
  }

   getString(String name){
     userName = name;
    notifyListeners();
  }


}