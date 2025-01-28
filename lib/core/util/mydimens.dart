import 'package:flutter/material.dart';
import 'package:task_4/core/network/mynetwork.dart';
import 'package:task_4/core/util/mycolor.dart';
import 'package:task_4/core/util/myimage.dart';

class MyDimens {

  Widget futureBuilder({
    required BuildContext context,
    required Future future,
    required Widget child,
  }) {
    return FutureBuilder(
      future: future,
      builder: (context, snapShot) {
        if (snapShot.connectionState == ConnectionState.waiting) {
          return getLoadingIndicator();
        } else if (snapShot.hasError) {
          return const Center(child: Text('Error Occured while Fetching!'));
        } else {
          return child;
        }
      },
    );
  }
Widget getDoctorImage({
    required BuildContext context,
    String? profilePic,
    required bool isOnline,
  }) {
    final img = profilePic == null
        ? null
        : formatProfilePicNetworkPath(profilePic);
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: img == null
                ? Image.asset(MyImage.placeholderImg, fit: BoxFit.fill)
                : Image.network(
                    img,
                    fit: BoxFit.fill,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                      return Image.asset(MyImage.placeholderImg,
                          fit: BoxFit.fill);
                    },
                  ),
          ),
        ),
        if (isOnline)
          Positioned(top: 5, left: 5, child:liveDocIndicator()),
      ],
    );
  }

String formatProfilePicNetworkPath(String image) {
    return (image.replaceFirst("wwwroot", MyNetwork.url))
        .replaceAll("\\", "//");
  }

  Row getTitleText(String title) =>  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('See More', style: TextStyle(color: Colors.red,fontSize: 12)),
        ),
      ],
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
