
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:osama/Fratures/home/data/local_data/local_data_source.dart';
import 'package:osama/Fratures/home/data/repos/home_repo_impl.dart';
import 'package:osama/core/utils/api_serv.dart';



final getIt = GetIt.instance;



void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>(),HomeLocalDataSouceimpl() ));
}

// void setupServiceLocator() {
//   getIt.registerSingleton<ApiService>(ApiService(Dio()));
//   getIt.registerSingleton<HomeLocalDataSource>(HomeLocalDataSource()); // Correct class name here
//   getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
//     getIt.get<ApiService>(),
//     getIt.get<HomeLocalDataSource>(), // Correct class name here
//   ));
// }