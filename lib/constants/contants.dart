import 'dart:ui';

class MyContainer {
  static const double _base = 50;

  get small => _base;
  get medium => _base * 2;  
  get large => _base * 3;
}

class MyColors {
  get first => Colors.green;
  get second => Colors.red;
  get third => Colors.blue;
}

class Colors {
  static const Color green = Color(0xFF00FF00);
  static const Color red = Color(0xFFFF0000);
  static const Color blue = Color(0xFF0000FF);
}
