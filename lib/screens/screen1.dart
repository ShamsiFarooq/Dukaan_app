
import 'package:flutter/material.dart';


import '../style.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Additional Information",
          style: TextStyle(fontSize: 22),
        ),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            height15,
            list(
              icon: Icons.share, 
              text: 'Share Dukaan App',
              icon2:Icon(Icons.keyboard_arrow_right),
              ),
              list(
              icon: Icons.comment_bank, 
              text: 'Change Language',
              icon2:Icon(Icons.keyboard_arrow_right),
              ),
              list(
              icon: Icons.whatsapp, 
              text: 'Change Language',
              icon2:Switch(value: true , onChanged:(value) => false,),
              ),
              list(
                icon: Icons.security_sharp, 
                text: 'Privacy Policy',
              ),
              list(
                icon: Icons.star_border, 
                text: 'Rate us'
              ),
              list(
                icon: Icons.logout, 
                text: 'Sign out'
              )
            
            
          ],
        ),
      ),
    );
  }


}


ListTile list({required IconData icon,required String text,Widget? icon2}){
  return ListTile(
    leading: Icon(icon),
    title: Text(text),
    trailing: icon2,

  );
}