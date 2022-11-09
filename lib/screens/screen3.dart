// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../style.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 244, 244),
      appBar: AppBar(
        title: const Text('Payments'),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.info_outline),
          width15,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            transactionLimit(),
            listOne(icon: Icons.keyboard_arrow_right, text: 'Default Method', txt2: 'Online Payments'),
            listOne(icon: Icons.keyboard_arrow_right, text: 'Payment Profile', txt2: 'Bank Account'),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                headText(textHead: 'Payments Overview'),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            height15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                card3(
                    icon: Icons.currency_rupee_outlined,
                    text: 'AMOUNT ON HOLD',
                    color: Colors.orange,
                    amount: '0'),
                card3(
                    icon: Icons.currency_rupee_outlined,
                    text: 'AMOUNT RECIEVED',
                    color: Colors.green,
                    amount: '13,332'),
              ],
            ),
            height15,
            headText(textHead: 'Transactions'),
            height15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                transactionButton(
                    butText: 'On hold',
                    colorB: Color.fromRGBO(200, 193, 193, 1),
                    ColorT: Colors.black),
                transactionButton(
                    butText: 'Payouts (15)',
                    colorB: Colors.blue,
                    ColorT: Colors.white),
                transactionButton(
                    butText: 'Refunds',
                    colorB: Color.fromARGB(255, 211, 206, 206),
                    ColorT: Colors.black),
              ],
            ),
            Column(
              children: [
                orders(orderNo: 'order #1688068', date: 'Jul 12, 02:30 PM', price: '₹799', text: '₹799 deposited to:58860200000138', image:'assets/img/tshirt1.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/mug1.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/book1.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/book2.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/redt.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/book1.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/tshirt1.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/whitet.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/mug1.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/book1.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/mug1.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/book2.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/tshirt1.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/whitet.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/bluet.jpg', ),
                orders(orderNo: 'order #1457741', date: 'Apr 26, 07:47 AM', price: '₹397.4', text: '₹397.4 deposited to:58860200000138', image:'assets/img/mug1.jpg', ),
                
                
                
                 ],
            ),
           //
          ],
        ),
      ),
    );
  }

  Container transactionLimit() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 230,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headText(textHead: 'Transaction limit'),
          height15,
          const Text(
            'A free limit upto wich you will recieve ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          const Text(
            'the online payments directly in oyur bank',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          height15,
          LinearPercentIndicator(
            padding: const EdgeInsets.all(0),
            //width: 140.0,
            lineHeight: 12.0,
            percent: 0.3,
            backgroundColor: Colors.grey,
            progressColor: Colors.blue,
            barRadius: const Radius.circular(10),
          ),
          const Text(
            '36,668 left out of ₹50,000',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          height25,
          ElevatedButton(onPressed: () {}, child: const Text('Increase limit')),
        ],
      ),
    );
  }

  ListTile listOne(
      {required IconData icon, required String text, required String txt2}) {
    return ListTile(
      title: Text(text),
      // trailing: Row(
      //   children: [
      //     Text(txt2),
      //     Icon(icon),
      //   ],
      // ),
    );
  }

  Container card3(
      {required IconData icon,
      required String text,
      required Color color,
      required String amount}) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10),
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
          height15,
          Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(color: color),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                Text(
                  amount,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          height15,
        ],
      ),
    );
  }

  Text headText({required String textHead}) {
    return Text(
      textHead,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  ElevatedButton transactionButton(
      {required String butText, required Color colorB, required Color ColorT}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        backgroundColor: colorB,
      ),
      child: Text(
        butText,
        style: TextStyle(
          color: ColorT,
        ),
      ),
    );
  }

  Column orders({required String orderNo,required String date,required String price,required String text,required String image}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        contentPadding:const EdgeInsets.only(left:10),
        leading:Container(
          width: 50,height: 60,
          decoration: BoxDecoration(border: Border.all(color: Colors.black54),),
          child: Image(image:AssetImage(image),),
        ),
        title: Text(orderNo,style:listTile1,),
        subtitle: Text(date),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(price,style: price1,),
            height15,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(radius: 5,backgroundColor: Colors.green,),
                const SizedBox(width: 5),
               const Text(success, style: TextStyle(fontSize: 17,color: Colors.black54,),),

              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10,bottom: 5),
        child: Text(text,style: orderText3,),
      )
    ],
  );



  
}
}