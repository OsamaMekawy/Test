import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:osama/Fratures/home/presentation/views/widgets/custom_tab_bar.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage:AssetImage("assets/images/osama.png") ,

                  ),
                 // const SizedBox(width: 30,),
                   Expanded(
                     child: Center(
                       child: Container(
                             width: 300.0,
                             height: 35.0, // Adjust the width as needed
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(8.0), // Adjust the border radius
                               color: Colors.grey[200],
                             ),
                             child:const TextField(
                               decoration: InputDecoration(
                                 hintText: 'Search...',
                                 prefixIcon: Icon(Icons.search, color: Colors.grey),
                                 border: InputBorder.none,
                                 contentPadding: EdgeInsets.all(10.0), // Adjust the content padding
                               ),
                               style: TextStyle(fontSize: 14.0), // Adjust the font size
                             ),
                           ),
                     ),
                   ),
                 // const SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){},
                    child: Image.asset("assets/images/pen.png",scale: 20,),
                  )

                ],
              ),
            ),
            const SizedBox(height: 12,),
             Expanded(
               child: Container(
                height: 500,
                width: double.infinity,
                child : const TabScreen()
               ),
             ),
            
          ],
        ),
      ),
      
    );
  }
}