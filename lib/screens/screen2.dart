import 'package:flutter/material.dart';

import '../style.dart';


class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 239, 224),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Manage Store',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  card(
                    icon: Icons.campaign_outlined,
                    text: 'Marketing Design',
                    color: Colors.orange,
                  ),
                  card(
                      icon: Icons.currency_rupee_sharp,
                      text: 'Online Payment',
                      color: Colors.green)
                ],
              ),
              height15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  card(
                      icon: Icons.discount_rounded,
                      text: 'Discount Coupons',
                      color: Colors.yellow),
                  card(
                      icon: Icons.people,
                      text: 'My customer',
                      color: Colors.cyan)
                ],
              ),
              height15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  card(
                      icon: Icons.qr_code_scanner_outlined,
                      text: 'Store QR code',
                      color: Colors.grey),
                  card(
                      icon: Icons.currency_rupee_rounded,
                      text: 'Extra charges',
                      color: Colors.purple)
                ],
                
              ),
              height15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  card(
                      icon: Icons.format_align_left_outlined,
                      text: 'Order Form',
                      color: Colors.pink),
                  
                ],
                
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  card({required IconData icon, required String text, required Color color}) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10),
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(color: color),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          height15,
          Text(text),
        ],
      ),
    );
  }
}
