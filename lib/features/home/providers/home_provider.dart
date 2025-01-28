import 'package:flutter/material.dart';
import 'package:task_4/core/base/base_client_class2.dart';
import 'package:task_4/features/home/data/models/pat_doctor_info.dart';

class HomeProvider with ChangeNotifier{
  final List<PatDoctorInfo> _liveDocList = [];

  List<PatDoctorInfo> get liveDocList => [..._liveDocList];

  Future<void> fetchLiveDocList(BuildContext ctx) async {
    final result = await BaseClientClass2.getData(
      path: "api/app/doctor-profile/live-online-doctor-list",
      parameters: {
        "Offset": 0,
        "Limit": 5,
        "PageNo": 0,
        "PageSize": 5,
        "SortBy": "name",
        "SortOrder": "asc",
        "IsDesc": false
      },
      ctx: ctx,
    );
    if (result != null) {
      _liveDocList.clear();
      for (var map in result) {
        _liveDocList.add(PatDoctorInfo.fromMap(map));
      }
      notifyListeners();
    }
    }
}