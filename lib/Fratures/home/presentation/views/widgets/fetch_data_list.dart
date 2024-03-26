
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osama/Fratures/home/data/models/home_model.dart';
import 'package:osama/Fratures/home/presentation/manager/cubit.dart';
import 'package:osama/Fratures/home/presentation/manager/states.dart';
import 'package:osama/core/utils/api_serv.dart';







class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key,}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedHomeCubit, FeaturedHomeState>(
      builder: (context, state) {
        if (state is FeaturedHomeSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,


            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.homemodel.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child:SizedBox(
                        height: 120,
                        child: Row(
                          children: [
                            CircleAvatar(
                    radius: 20,
                   // backgroundImage:AssetImage("assets/images/osama.png") ,
                    child: Text(state.homemodel[index].id.toString()),

                  ),
                 const SizedBox(width: 20,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(state.homemodel[index].title,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 5,),
                        SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                        state.homemodel[index].body,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
                      ),
                    ),



                      ],

                  )
                  )
                          ],
                        ),
                      )
                    ),
                  );
                },

                ),
          );
        } else if (state is FeaturedHomeFailure) {
          return Center(child: Text(state.errMessage,style: TextStyle(fontSize: 20,),),);
        } else {
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
