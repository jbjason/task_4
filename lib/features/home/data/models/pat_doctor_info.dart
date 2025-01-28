// ignore_for_file: prefer_null_aware_operators

class PatDoctorInfo {
  final int id;
  final String fullName;
  final String? dateOfBirth;
  final String doctorCode;
  final int? doctorTitle;
  final int? gender;
  final String? address;
  final String? city;
  final String? country;
  final String mobileNo;
  final String? email;
  final String identityNumber;
  final String? bmdcRegNo;
  final String? bmdcRegExpiryDate;
  final String? qualifications;
  final int specialityId;
  final String specialityName;
  final String? areaOfExperties;
  final String userId;
  final bool isOnline;
  final String? profilePic;
  final double? displayInstantFeeAsPatient;
  final double? displayScheduledPatientChamberFee;
  final double? displayScheduledPatientOnlineFee;
  const PatDoctorInfo({
    required this.id,
    required this.fullName,
    this.dateOfBirth,
    required this.doctorCode,
    required this.doctorTitle,
    this.gender,
    this.address,
    this.city,
    this.country,
    required this.mobileNo,
    this.email,
    required this.identityNumber,
    this.bmdcRegNo,
    this.bmdcRegExpiryDate,
    //this.degrees = const [],
    this.qualifications = "",
    required this.specialityId,
    this.specialityName = "",
    // this.doctorSpecialization = const [],
    this.areaOfExperties = "",
    required this.userId,
    this.isOnline = false,
    this.profilePic,
    this.displayInstantFeeAsPatient,
    this.displayScheduledPatientChamberFee,
    this.displayScheduledPatientOnlineFee,
  });

  PatDoctorInfo copyWith({
    int? id,
    String? fullName,
    String? dateOfBirth,
    String? doctorCode,
    int? doctorTitle,
    int? gender,
    String? address,
    String? city,
    String? country,
    String? mobileNo,
    String? email,
    String? identityNumber,
    String? bmdcRegNo,
    String? bmdcRegExpiryDate,
    String? qualifications,
    int? specialityId,
    String? specialityName,
    String? areaOfExperties,
    String? userId,
    bool? isOnline,
    String? profilePic,
    double? displayInstantFeeAsPatient,
    double? displayScheduledPatientChamberFee,
    double? displayScheduledPatientOnlineFee,
  }) {
    return PatDoctorInfo(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      doctorCode: doctorCode ?? this.doctorCode,
      doctorTitle: doctorTitle ?? this.doctorTitle,
      gender: gender ?? this.gender,
      address: address ?? this.address,
      city: city ?? this.city,
      country: country ?? this.country,
      mobileNo: mobileNo ?? this.mobileNo,
      email: email ?? this.email,
      identityNumber: identityNumber ?? this.identityNumber,
      bmdcRegNo: bmdcRegNo ?? this.bmdcRegNo,
      bmdcRegExpiryDate: bmdcRegExpiryDate ?? this.bmdcRegExpiryDate,
      qualifications: qualifications ?? this.qualifications,
      specialityId: specialityId ?? this.specialityId,
      specialityName: specialityName ?? this.specialityName,
      areaOfExperties: areaOfExperties ?? this.areaOfExperties,
      userId: userId ?? this.userId,
      isOnline: isOnline ?? this.isOnline,
      profilePic: profilePic ?? this.profilePic,
      displayInstantFeeAsPatient:
          displayInstantFeeAsPatient ?? this.displayInstantFeeAsPatient,
      displayScheduledPatientChamberFee: displayScheduledPatientChamberFee ??
          this.displayScheduledPatientChamberFee,
      displayScheduledPatientOnlineFee: displayScheduledPatientOnlineFee ??
          this.displayScheduledPatientOnlineFee,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'fullName': fullName,
      'dateOfBirth': dateOfBirth,
      'doctorCode': doctorCode,
      'doctorTitle': doctorTitle,
      'gender': gender,
      'address': address,
      'city': city,
      'country': country,
      'mobileNo': mobileNo,
      'email': email,
      'identityNumber': identityNumber,
      'bmdcRegNo': bmdcRegNo,
      'bmdcRegExpiryDate': bmdcRegExpiryDate,
      //  'degrees': degrees.map((x) => x.toMap()).toList(),
      'qualifications': qualifications,
      'specialityId': specialityId,
      'specialityName': specialityName,
      // 'doctorSpecialization':
      //     doctorSpecialization!.map((x) => x.toMap()).toList(),
      'areaOfExperties': areaOfExperties,
      'userId': userId,
      'isOnline': isOnline,
      'profilePic': profilePic,
      'displayInstantFeeAsPatient': displayInstantFeeAsPatient,
      'displayScheduledPatientChamberFee': displayScheduledPatientChamberFee,
      'displayScheduledPatientOnlineFee': displayScheduledPatientOnlineFee
    };
  }

  factory PatDoctorInfo.fromMap(Map<String, dynamic> map) {
    return PatDoctorInfo(
      id: map['id'] as int,
      fullName: map['fullName'].toString(),
      dateOfBirth: map['dateOfBirth']?.toString(),
      doctorCode: map['doctorCode'].toString(),
      doctorTitle:
          map['doctorTitle'] == null ? null : map['doctorTitle'] as int,
      gender: map['gender'] == null ? null : map['gender'] as int,
      address:
          map['address'] == null ? null : map['address'].toString(),
      city: map['city'] == null ? null : map['city'].toString(),
      country: map['country'] == null ? null : map['country'].toString(),
      mobileNo: map['mobileNo'].toString(),
      email: map['email'] == null ? null : map['email'].toString(),
      identityNumber: map['identityNumber'].toString(),
      bmdcRegNo: map['bmdcRegNo']?.toString(),
      bmdcRegExpiryDate: map['bmdcRegExpiryDate']?.toString(),
      qualifications:
          map['qualifications'] == null
              ? null
              : map['qualifications'].toString(),
      specialityId: map['specialityId'] as int,
      specialityName: map['specialityName'].toString(),
      areaOfExperties: map['areaOfExperties'] == null
          ? ""
          : map['areaOfExperties'].toString(),
      userId: map['userId'].toString(),
      isOnline: map['isOnline'] == null ? false : map['isOnline'] as bool,
      profilePic:
          map['profilePic'] == null ? null : map['profilePic'].toString(),
      displayInstantFeeAsPatient:
          map['displayInstantFeeAsPatient'] == null
              ? null
              : double.parse(map['displayInstantFeeAsPatient'].toString()),
      displayScheduledPatientChamberFee:
          map['displayScheduledPatientChamberFee'] == null
              ? null
              : double.parse(
                  map['displayScheduledPatientChamberFee'].toString()),
      displayScheduledPatientOnlineFee:
          map['displayScheduledPatientOnlineFee'] == null
              ? null
              : double.parse(
                  map['displayScheduledPatientOnlineFee'].toString()),
    );
  }
}
