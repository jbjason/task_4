import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:task_4/core/base/base_client_class2.dart';
import 'package:task_4/core/util/mystring.dart';
import 'package:task_4/features/home/data/models/pat_doctor_info.dart';

class HomeProvider with ChangeNotifier {
  final List<PatDoctorInfo> _liveDocList = [];

  List<PatDoctorInfo> get liveDocList => [..._liveDocList];

  Future<void> fetchLiveDocList(BuildContext ctx) async {
     if (_liveDocList.isNotEmpty) return;
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
      await addHiveBoxInfo(result);
      notifyListeners();
    }
  }

  Future<String> addHiveBoxInfo(dynamic result) async {
    Logger().f( 'Hive Box Info: $result');
    try {
      await Hive.box(MyString.boxName).put(
        1,
        {"doctors": _liveDocList.map((e) => e.toMap()).toList()},
      );
      return 'Successful';
    } catch (e) {
      return 'Hive Error: $e';
    }
  }

  Future<void> fetchHiveBoxInfo() async {
    try {
      final result = await Hive.box(MyString.boxName).get(1);
      Logger().i('Hive Result: $result');
      if (result != null) {
        _liveDocList.clear();
        for (var map in result["doctors"]) {
          _liveDocList.add(PatDoctorInfo.fromMap(map.cast<String, dynamic>()));
        }
        notifyListeners();
      }
    } catch (e) {
      Logger().e('Hive Error: $e');
    }
  }
}
