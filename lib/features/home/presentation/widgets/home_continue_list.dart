import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_4/core/util/mydimens.dart';
import 'package:task_4/features/home/providers/home_provider.dart';

class HomeContinueList extends StatelessWidget {
  const HomeContinueList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDimens().getTitleText('Continue Watching'),
        SizedBox(
          height: 180,
          child: MyDimens().futureBuilder(
            context: context,
            future: Provider.of<HomeProvider>(context, listen: false)
                .fetchLiveDocList(context),
            child: _getBody(context),
          ),
        ),
      ],
    );
  }

  Widget _getBody(BuildContext context) {
    final doctors = Provider.of<HomeProvider>(context).liveDocList;
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: doctors.length,
      separatorBuilder: (_, __) => const SizedBox(width: 20),
      itemBuilder: (context, index) {
        final currentIndex = doctors.length - 1 - index;
        return SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: MyDimens().getDoctorImage(
                    context: context,
                    profilePic: doctors[currentIndex].profilePic,
                    isOnline: doctors[currentIndex].isOnline),
              ),
              const SizedBox(height: 10),
              Text(
                doctors[currentIndex].fullName,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                doctors[currentIndex].areaOfExperties!,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}
