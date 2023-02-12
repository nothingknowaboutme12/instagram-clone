import 'package:flutter/cupertino.dart';

class bottomNaviagtion extends ChangeNotifier {
  int _bottomindex = 0;
  int get index => _bottomindex;
  changeindex(int index) {
    _bottomindex = index;
    notifyListeners();
  }
}
