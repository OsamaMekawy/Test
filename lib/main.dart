import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:osama/Fratures/home/data/models/home_model.dart';
import 'package:osama/Fratures/home/data/repos/home_repo_impl.dart';
import 'package:osama/Fratures/home/presentation/manager/cubit.dart';
import 'package:osama/Fratures/login/login_view.dart';
import 'package:osama/core/utils/sevises_locator.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/utils/constans.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(HomeModelAdapter());
  setupServiceLocator();
  await Hive.openBox<HomeModel>(KfetchData);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>FeaturedHomeCubit(getIt.get<HomeRepoImpl>())..fetchData())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
