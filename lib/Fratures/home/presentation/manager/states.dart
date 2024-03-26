



import 'package:osama/Fratures/home/data/models/home_model.dart';

abstract class FeaturedHomeState   {
  const FeaturedHomeState();

  @override
  List<Object> get props => [];
}

class FeaturedHomeInitial extends FeaturedHomeState {}

class FeaturedHomeLoading extends FeaturedHomeState {}

class FeaturedHomeFailure extends FeaturedHomeState {
  final String errMessage;

  const FeaturedHomeFailure(this.errMessage);
}

class FeaturedHomeSuccess extends FeaturedHomeState {
  final List<HomeModel> homemodel;

  const FeaturedHomeSuccess(this.homemodel);
}
