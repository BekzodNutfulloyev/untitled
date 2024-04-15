import 'package:flutter/cupertino.dart';

class NameProviders extends ChangeNotifier {
  String? name;
  NameProviders({this.name="Default name"});

  void changeName({required String newName}) {
    name = newName;
    notifyListeners();
  }
}
