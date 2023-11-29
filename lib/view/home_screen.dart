import 'package:flutter/material.dart';
import 'package:multi_color_provider/controller/home_provider.dart';
import 'package:multi_color_provider/helper/color.dart';
import 'package:multi_color_provider/helper/sizedbox.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Consumer<homeProvider>(
        builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: value.color,
              ),
              sized120,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        value.updateColor(kBlueColor);
                      },
                      child:
                          Container(height: 50, width: 80, color: kBlueColor)),
                  GestureDetector(
                      onTap: () {
                        value.updateColor(kRedColor);
                      },
                      child:
                          Container(height: 50, width: 80, color: kRedColor)),
                  GestureDetector(
                      onTap: () {
                        value.updateColor(kGreenColor);
                      },
                      child:
                          Container(height: 50, width: 80, color: kGreenColor)),
                  GestureDetector(
                      onTap: () {
                        value.updateColor(kBlackColor);
                      },
                      child:
                          Container(height: 50, width: 80, color: kBlackColor)),
                ],
              ),
            ],
          );
        },
      ),
    ));
  }
}
