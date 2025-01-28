import 'dart:convert';

class PatLiveDoctor {
  final int doctorProfileId;
  final String doctorName;
  final String doctorCode;
  final int patientProfileId;
  final String patientName;
  final String patientCode;
  final String patientMobileNo;
  final String patientEmail;
  final double doctorFee;
  final double agentFee;
  final double platformFee;
  final double totalAppointmentFee;
  final int appointmentStatus;
  final int appointmentPaymentStatus;
  final int appointmentCreatorId;
  final int consultancyType;
  final String? appointmentCreatorRole;
  const PatLiveDoctor({
    required this.doctorProfileId,
    required this.doctorName,
    required this.doctorCode,
    required this.patientProfileId,
    required this.patientName,
    required this.patientCode,
    required this.patientMobileNo,
    required this.patientEmail,
    required this.doctorFee,
    required this.agentFee,
    required this.platformFee,
    required this.totalAppointmentFee,
    required this.appointmentStatus,
    required this.appointmentPaymentStatus,
    required this.appointmentCreatorId,
    this.consultancyType = 5,
    this.appointmentCreatorRole = "patient",
  });

  PatLiveDoctor copyWith({
    int? doctorProfileId,
    String? doctorName,
    String? doctorCode,
    int? patientProfileId,
    String? patientName,
    String? patientCode,
    String? patientMobileNo,
    String? patientEmail,
    double? doctorFee,
    double? agentFee,
    double? platformFee,
    double? totalAppointmentFee,
    int? appointmentStatus,
    int? appointmentPaymentStatus,
    int? appointmentCreatorId,
    int? consultancyType,
    String? appointmentCreatorRole,
  }) {
    return PatLiveDoctor(
      doctorProfileId: doctorProfileId ?? this.doctorProfileId,
      doctorName: doctorName ?? this.doctorName,
      doctorCode: doctorCode ?? this.doctorCode,
      patientProfileId: patientProfileId ?? this.patientProfileId,
      patientName: patientName ?? this.patientName,
      patientCode: patientCode ?? this.patientCode,
      patientMobileNo: patientMobileNo ?? this.patientMobileNo,
      patientEmail: patientEmail ?? this.patientEmail,
      doctorFee: doctorFee ?? this.doctorFee,
      agentFee: agentFee ?? this.agentFee,
      platformFee: platformFee ?? this.platformFee,
      totalAppointmentFee: totalAppointmentFee ?? this.totalAppointmentFee,
      appointmentStatus: appointmentStatus ?? this.appointmentStatus,
      appointmentPaymentStatus:
          appointmentPaymentStatus ?? this.appointmentPaymentStatus,
      appointmentCreatorId: appointmentCreatorId ?? this.appointmentCreatorId,
      consultancyType: consultancyType ?? this.consultancyType,
      appointmentCreatorRole:
          appointmentCreatorRole ?? this.appointmentCreatorRole,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doctorProfileId': doctorProfileId,
      'doctorName': doctorName,
      'doctorCode': doctorCode,
      'patientProfileId': patientProfileId,
      'patientName': patientName,
      'patientCode': patientCode,
      'patientMobileNo': patientMobileNo,
      'patientEmail': patientEmail,
      'doctorFee': doctorFee,
      'agentFee': agentFee,
      'platformFee': platformFee,
      'totalAppointmentFee': totalAppointmentFee,
      'appointmentStatus': appointmentStatus,
      'appointmentPaymentStatus': appointmentPaymentStatus,
      'appointmentCreatorId': appointmentCreatorId,
      'consultancyType': consultancyType,
      'appointmentCreatorRole': appointmentCreatorRole,
    };
  }

  factory PatLiveDoctor.fromMap(Map<String, dynamic> map) {
    return PatLiveDoctor(
      doctorProfileId: map['doctorProfileId'] as int,
      doctorName: map['doctorName'].toString(),
      doctorCode: map['doctorCode'].toString(),
      patientProfileId: map['patientProfileId'] as int,
      patientName: map['patientName'].toString(),
      patientCode: map['patientCode'].toString(),
      patientMobileNo: map['patientMobileNo'].toString(),
      patientEmail: map['patientEmail'].toString(),
      doctorFee: map['doctorFee'] as double,
      agentFee: map['agentFee'] as double,
      platformFee: map['platformFee'] as double,
      totalAppointmentFee: map['totalAppointmentFee'] as double,
      appointmentStatus: map['appointmentStatus'] as int,
      appointmentPaymentStatus: map['appointmentPaymentStatus'] as int,
      appointmentCreatorId: map['appointmentCreatorId'] as int,
      consultancyType: map['consultancyType'] as int,
      appointmentCreatorRole:
          // ignore: prefer_null_aware_operators
          map['consultancyType'] == null
              ? null
              : map['consultancyType'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory PatLiveDoctor.fromJson(dynamic source) =>
      PatLiveDoctor.fromMap(source as Map<String, dynamic>);
}
