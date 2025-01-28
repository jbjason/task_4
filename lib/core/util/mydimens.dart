// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:task_4/core/util/mycolor.dart';

class MyDimens {
  static const cmDivider = Divider(color: MyColor.inActiveColor, thickness: .5);

  AppBar getNormalAppBar(String title, List<Widget> actions, BuildContext ctx,
          [bool backButton = false]) =>
      AppBar(
        leading: backButton
            ? IconButton(
                onPressed: () => Navigator.pop(ctx),
                icon: const Icon(Icons.arrow_back_ios_new),
              )
            : const SizedBox(),
        title: Text(title),
        centerTitle: true,
        actions: actions,
      );


  static const bodyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Colors.white, Colors.white, Color(0xB3FFFFFF), Color(0x62FFFFFF)],
  );

  Gradient getHomeGradient(Color color) => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          color.withOpacity(.9),
          color.withOpacity(.6),
          color.withOpacity(.4)
        ],
      );

  static const bodyShadow = [
    BoxShadow(
      color: Colors.white,
      blurRadius: 40,
      offset: Offset(-5, -2),
    ),
    BoxShadow(
      color: Color.fromARGB(255, 173, 196, 219),
      blurRadius: 10,
      offset: Offset(5, 5),
    ),
  ];
  final secondaryShadow = [
    BoxShadow(
      color: const Color(0xFF3F6080).withOpacity(.8),
      blurRadius: 10,
      offset: const Offset(5, 5),
    ),
  ];

  Container getButtonStyle({required Widget child}) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: MyColor.skyPrimary,
          boxShadow: bodyShadow,
        ),
        child: child,
      );
  Widget getTitleText(String title, Color color) => Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold, color: color),
      );
  Widget getSubTitleText(String title, Color color) => Text(
        title,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(fontSize: 9.5, color: color),
      );
  Widget getDoctorCategory(String title) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
        decoration: const BoxDecoration(
          color: MyColor.skyPrimary,
          borderRadius: BorderRadius.horizontal(
            left: Radius.zero,
            right: Radius.circular(4),
          ),
        ),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 8, color: Colors.white),
        ),
      );


  
  Container liveDocIndicator({
    String title = "Online",
    FontWeight fontWeighth = FontWeight.normal,
    double fontSize = 9,
  }) =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: MyColor.successColor,
        ),
        child: Text(title,
            style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeighth,
                color: Colors.white)),
      );

  Center getLoadingIndicator() =>
      const Center(child: CircularProgressIndicator());

}
