import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osama/Fratures/home/data/repos/home_repo.dart';
import 'package:osama/Fratures/home/presentation/manager/states.dart';

class FeaturedHomeCubit extends Cubit<FeaturedHomeState> {
  FeaturedHomeCubit(this.homeRepo) : super(FeaturedHomeInitial());
  final HomeRepo homeRepo;

  Future<void> fetchData() async {
    emit(FeaturedHomeLoading());
    var results = await homeRepo.getTestModel();
    results.fold((failuer) => emit(FeaturedHomeFailure(failuer.errMessage)),
        (Data) => emit(FeaturedHomeSuccess(Data)));

  }
}
