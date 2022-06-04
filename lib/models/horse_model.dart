import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

class HorseModel {
  late String horseName;
  late String horseImage;
  late String fatherName;
  late String fatherName1;
  late String fatherName2;
  late String motherName;
  late String motherName1;
  late String motherName2;
  late String sectionNUmber;
  late String sectionName;
  late String boxNum;
  late String owner;
  late String birthDate;
  late String initPrice;
  late String microshipCode;
  late String type;
  late String color;
  late String gander;
  late String specific;
  late String nationality;
  late String source;
  late String sourceLocation;

  HorseModel.fromJson(Map<String, dynamic> json) {
    horseName = json['horseName'];
    horseImage = json['horseImage'];
    fatherName = json['fatherName'];
    fatherName1 = json['fatherName1'];
    fatherName2 = json['fatherName2'];
    motherName = json['motherName'];
    motherName1 = json['motherName1'];
    motherName2 = json['motherName2'];
    sectionNUmber = json['sectionNUmber'];
    sectionName = json['sectionName'];
    type = json['type'];
    boxNum = json['boxNum'];
    owner = json['owner'];
    birthDate = json['birthDate'];
    initPrice = json['initPrice'];
    microshipCode = json['microshipCode'];
    color = json['color'];
    gander = json['gander'];
    specific = json['specific'];
    nationality = json['nationality'];
    source = json['source'];
    sourceLocation = json['sourceLocation'];
  }

  Map<String, dynamic> toMap() {
    return {
      'horseName': horseName,
      'horseImage': horseImage,
      'fatherName': fatherName,
      'fatherName1': fatherName1,
      'fatherName2': fatherName2,
      'motherName': motherName,
      'motherName1': motherName1,
      'motherName2': motherName2,
      'sectionName': sectionName,
      'sectionNUmber': sectionNUmber,
      'type': type,
      'boxNum': boxNum,
      'owner': owner,
      'birthDate': birthDate,
      'initPrice': initPrice,
      'microshipCode': microshipCode,
      'color': color,
      'gander': gander,
      'specific': specific,
      'nationality': nationality,
      'source': source,
      'sourceLocation': sourceLocation,
    };
  }

  HorseModel({
    required this.horseName,
    required this.horseImage,
    required this.fatherName,
    required this.fatherName1,
    required this.fatherName2,
    required this.motherName,
    required this.motherName1,
    required this.motherName2,
    required this.sectionNUmber,
    required this.sectionName,
    required this.type,
    required this.boxNum,
    required this.owner,
    required this.birthDate,
    required this.initPrice,
    required this.microshipCode,
    required this.color,
    required this.gander,
    required this.specific,
    required this.nationality,
    required this.source,
    required this.sourceLocation,
  });
}
