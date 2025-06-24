import 'package:flutter/material.dart';

class Employee {
  final String id;
  final String name;
  final String position;
  final String salary; 
  final IconData icon;

  Employee({
    required this.id,
    required this.name,
    required this.position,
    required this.salary,
    required this.icon,
  });
}
