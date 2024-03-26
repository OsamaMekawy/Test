import 'package:dartz/dartz.dart';
import 'package:osama/Fratures/home/data/models/home_model.dart';
import 'package:osama/core/errors/failure.dart';

abstract class HomeRepo
{
  Future<Either<Failure,List<HomeModel>>> getTestModel();
}