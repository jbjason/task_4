// ignore_for_file: prefer_null_aware_operators

class PatDoctorInfo {
  final int id;
  final String fullName;
  final String? qualifications;
  final int specialityId;
  final String specialityName;
  final String? areaOfExperties;
  final bool isOnline;
  final String? profilePic;
  const PatDoctorInfo({
    required this.id,
    required this.fullName,
    this.qualifications = "",
    required this.specialityId,
    this.specialityName = "",
    this.areaOfExperties = "",
    this.isOnline = false,
    this.profilePic,
  });

  PatDoctorInfo copyWith({
    int? id,
    String? fullName,
    String? qualifications,
    int? specialityId,
    String? specialityName,
    String? areaOfExperties,
    bool? isOnline,
    String? profilePic,
  }) {
    return PatDoctorInfo(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      qualifications: qualifications ?? this.qualifications,
      specialityId: specialityId ?? this.specialityId,
      specialityName: specialityName ?? this.specialityName,
      areaOfExperties: areaOfExperties ?? this.areaOfExperties,
      isOnline: isOnline ?? this.isOnline,
      profilePic: profilePic ?? this.profilePic,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'fullName': fullName,
      'qualifications': qualifications,
      'specialityId': specialityId,
      'specialityName': specialityName,
      'areaOfExperties': areaOfExperties,
      'isOnline': isOnline,
      'profilePic': profilePic,
    };
  }

  factory PatDoctorInfo.fromMap(Map<String, dynamic> map) {
    return PatDoctorInfo(
      id: map['id'] as int,
      fullName: map['fullName'].toString(),
      qualifications:
          map['qualifications'] == null
              ? null
              : map['qualifications'].toString(),
      specialityId: map['specialityId'] as int,
      specialityName: map['specialityName'].toString(),
      areaOfExperties: map['areaOfExperties'] == null
          ? ""
          : map['areaOfExperties'].toString(),
      isOnline: map['isOnline'] == null ? false : map['isOnline'] as bool,
      profilePic:
          map['profilePic'] == null ? null : map['profilePic'].toString(),
    );
  }
}
