import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:osama/Fratures/home/data/models/home_model.dart';
import 'package:osama/Fratures/home/presentation/views/widgets/fetch_data_list.dart';


class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 4,
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              child: const TabBar(
                labelColor: Colors.blue,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(
                    child: Text("Messages"),
                  ),
                  Tab(
                    child: Text("Active"),
                  ),
                  Tab(
                    child: Text("Group"),
                  ),
                  Tab(
                    child: Text("Calls"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(

                children: [
                  FeaturedBooksListView(),
                  Text("data"),
                  Text("data"),
                  Text("data")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
