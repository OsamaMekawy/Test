import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:osama/Fratures/home/data/local_data/local_data_source.dart';
import 'package:osama/Fratures/home/data/models/home_model.dart';
import 'package:osama/Fratures/home/data/repos/home_repo.dart';
import 'package:osama/core/errors/failure.dart';
import 'package:osama/core/utils/api_serv.dart';
import 'package:osama/core/utils/constans.dart';

class HomeRepoImpl extends HomeRepo{

final ApiService apiService;
final HomeLocalDataSouce homeLocalDataSouce;

  HomeRepoImpl( this.apiService,this.homeLocalDataSouce);

  @override
  Future<Either<Failure, List<HomeModel>>> getTestModel()async {
    try {
      var homedatalist = homeLocalDataSouce.fechHomeLocalData();
      if(homedatalist.isNotEmpty)
        {
          return right(homedatalist);
        }

      var data = await apiService.get();
      List<HomeModel>models = [];
      for (var item in data ) {
        try {
          models.add(HomeModel.fromJson(item));
        } catch (e) {
          models.add(HomeModel.fromJson(item));
        }
        
      }
      // all boxs must be with <HomeModel>
      var box = Hive.box<HomeModel>(KfetchData);


      box.addAll(models);

      return right(models);
      
    } catch (e) {
      // DioErorr
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

}