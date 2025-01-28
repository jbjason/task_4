import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_4/core/util/mydimens.dart';
import 'package:task_4/features/home/providers/home_provider.dart';

class HomeRecommendedList extends StatelessWidget {
  const HomeRecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDimens().getTitleText('Recommended For You'),
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
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: doctors.length,
        separatorBuilder: (context, index) => const SizedBox(width: 14),
        itemBuilder: (context, index) {
          return  SizedBox(
            width: 110,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: 
                        MyDimens().getDoctorImage(
                          context: context,
                          profilePic: doctors[index].profilePic,
                          isOnline: doctors[index].isOnline
                         ),
                        
                              ),
                  ),
                            const SizedBox(height: 10),
                             Text(doctors[index].fullName,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white)),
                            
                
                ],
              ),
          );
        },
      );
  }
}