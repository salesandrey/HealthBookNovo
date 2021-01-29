
import 'package:flutter/material.dart';

class PrescriptionModel{

  final String id;
  final String date;
  final String patient;
  final String isParent;
  final String doctor;
  final String symptom;
  final String advice;
  final String state;
  final String medicine;
  final String validity;
  final String note;
  final String patientName;
  final String doctorName;
  final String hospitalID;
  final String active;
  final String createdOn;

  PrescriptionModel({
    @required this.id,
    @required this.date,
    @required this.patient,
    @required this.isParent,
    @required this.doctor,
    @required this.symptom,
    @required this.advice,
    @required this.state,
    @required this.medicine,
    @required this.validity,
    @required this.note,
    @required this.patientName,
    @required this.doctorName,
    @required this.hospitalID,
    @required this.active,
    @required this.createdOn});
}