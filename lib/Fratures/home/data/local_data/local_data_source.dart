import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:osama/Fratures/home/data/models/home_model.dart';
import 'package:osama/core/utils/constans.dart';

abstract class HomeLocalDataSouce{
  List<HomeModel> fechHomeLocalData();
}


class HomeLocalDataSouceimpl extends HomeLocalDataSouce{
  @override
  List<HomeModel> fechHomeLocalData() {
    var box = Hive.box<HomeModel>(KfetchData);
    return box.values.toList();
  }

}