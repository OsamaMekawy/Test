import 'package:hive/hive.dart';
part'home_model.g.dart';

class HomeModelView{
  final List<HomeModel>home_model;

  HomeModelView(this.home_model);

  factory HomeModelView.fromJson(List<dynamic>json){
    List<HomeModel> home =  [];
    home = json.map((data) => HomeModel.fromJson(data)).toList();
    return HomeModelView(home);
  }

}


@HiveType(typeId: 0)
class HomeModel{
  @HiveField(0)
  final int userId;
  @HiveField(1)
  final int id;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String body;

  HomeModel({required this.id,required this.userId,required this.title,required this.body});

 factory HomeModel.fromJson(Map<String,dynamic>json) {
   return HomeModel(
  id: json["id"],
   userId: json['userId'],
    title: json['title'],
     body: json['body']
  );
 }


}