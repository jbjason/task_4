import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_4/core/util/mydimens.dart';
import 'package:task_4/features/home/providers/home_provider.dart';

class HomeTrendingList extends StatelessWidget {
  const HomeTrendingList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDimens().getTitleText('Trending Movies'),
        SizedBox(
      height: 150,
      child: MyDimens().futureBuilder
(context: context,
future:

Provider.of<HomeProvider>(context, listen: false)
          .fetchLiveDocList( context),
          child: _getBody(context),
 ),  
    ),
      ],
    );
  }

  Widget _getBody(BuildContext context){
    final  doctors =
        Provider.of<HomeProvider>(context, listen: false).liveDocList;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 2.3 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                fit: StackFit.expand,
                children: [
                   MyDimens().getDoctorImage(
                          context: context,
                          profilePic: doctors[index].profilePic,
                          isOnline: doctors[index].isOnline
                         ),
                  Positioned(
                    bottom: 10,left: 10,
                    right: 10,
                    child: Container(
                    padding: const EdgeInsets.all(5),
                    child:  Text(doctors[index].fullName,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white)),
              ),),
                ],
              ),
          ));
        },
      );
  }
}