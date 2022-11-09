import 'package:flutter/material.dart';
import 'package:shopping_details/screens/screen1.dart';
import 'package:shopping_details/screens/screen2.dart';
import 'package:shopping_details/screens/screen3.dart';
import 'package:shopping_details/screens/screen4.dart';
import 'package:shopping_details/screens/screen5.dart';
import 'package:shopping_details/screens/screen6.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text('Home Screen'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            home(
              context, 
              text: 'Dukaan Premium', 
              icon: Icons.chevron_right_outlined,
              ontap:const DukaanPremium(),
            ),
            home(
              context, 
              text: 'Manage Store', 
              icon: Icons.chevron_right_outlined,
              ontap:const ScreenTwo(),
            ),
            home(
              context, 
              text: 'Additional Informations', 
              icon: Icons.chevron_right_outlined,
              ontap:const ScreenOne(),
            ),
            home(
              context, 
              text: 'Catalouge', 
              icon: Icons.chevron_right_outlined,
              ontap:const Catalouge(),
            ),
            home(
              context, 
              text: 'Order Details', 
              icon: Icons.chevron_right_outlined,
              ontap:const OrderDetails(),
            ),
            home(
              context, 
              text: 'Payments', 
              icon: Icons.chevron_right_outlined,
              ontap:const ScreenThree(),
            ),
          ],
        ),
      ),
    );
  }
}

ListTile home(BuildContext context,{required String text,required IconData icon,required Widget ontap}){
  return ListTile(
          title: Text(text,style: TextStyle(fontSize: 20),),
          trailing: Icon(icon),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: ((context) => ontap)))
  );
}