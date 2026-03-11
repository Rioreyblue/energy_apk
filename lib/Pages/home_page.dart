import 'package:energy_apk/constants/contants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      body: Stack(
        children: [
          //Row
         Container(
          height: MyContainer().small,
          width: MyContainer().small,
          color: MyColors().first,
         ),
         //Column
         Container(
          height: MyContainer().small,
          width: MyContainer().small,
          color: MyColors().second,
         ),
        //Row
         Container(
          height: MyContainer().small,
          width: MyContainer().small,
          color: MyColors().third,
         ),
        ],
      )
    );
  }
}