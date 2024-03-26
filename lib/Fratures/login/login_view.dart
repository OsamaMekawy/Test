import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osama/Fratures/home/presentation/views/home_view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Padding(
             padding: const EdgeInsets.only(top: 12),
             child: const Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
           ),
          const SizedBox(
            height: 12,
           ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: TextFormField(
                decoration:const InputDecoration(
                  labelText: "Username",
                  hintText: "Type your Username",
                  prefixIcon: Icon(Icons.person),
                      
                ),
              ),
            ),
           const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(right: 8.0,left: 8),
              child: TextFormField(
                decoration:const InputDecoration(
                  labelText: "Password",
                  hintText: "Type your Password",
                  prefixIcon: Icon(Icons.lock),
                      
                ),
              ),
            ),
           const SizedBox(height: 8,),
           
              const  Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Foregt Password ?",style: TextStyle(
                      fontSize: 14
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.purple
                    ),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));},
                     child:const Text("Login",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                ),
                const SizedBox(height: 15,),
               const Text("Or Sign Up Using",style: TextStyle(fontSize: 14),),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   IconButton(onPressed: (){},
                    icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,size: 35,)),
                     const  SizedBox(width: 4,),
                    GestureDetector(
                      onTap: (){},
                      child: Image.asset("assets/images/google.png",scale: 15,),
                    ),
                  const  SizedBox(width: 10,),
                      GestureDetector(
                      onTap: (){},
                      child: Image.asset("assets/images/twitter.png",scale: 15,),
                    ),
                    
                   
                    
                 ],
               ),
                const SizedBox(height: 8,),
               const Text("Or Sign Up Using",style: TextStyle(fontSize: 14),),
               TextButton(onPressed: (){}, child: Text("SIGN UP",style: TextStyle(fontSize: 14),),)


        
          ],
        ),
      ),
    );
  }
}