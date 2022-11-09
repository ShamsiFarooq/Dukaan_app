import 'package:flutter/material.dart';

import '../style.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text('Order #1688068'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('May 31, 05:42 PM',style: TextStyle(fontSize: 18,color: Colors.black),),
                  Row(
                    children:const [
                      CircleAvatar(radius: 7,backgroundColor: color1,),
                      SizedBox(width: 10,),
                      Text('Delivered',style: TextStyle(fontSize: 18,color: Colors.black54,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ],
              ),
              height1,
              divide,
              height2,
              orderdetail(),
              height1,
              divide,
              total(
                text1:const Text('Item total',style: TextStyle(color: Colors.black,fontSize: 18),), 
                text2:const Text('₹799',style: TextStyle(color: Colors.black,fontSize: 18),),
              ),
              const SizedBox(height: 5,),
              total(
                text1:const Text('Delivery',style: TextStyle(color: Colors.black,fontSize: 18),), 
                text2:const Text('FREE',style: TextStyle(color: Colors.green,fontSize: 18),)
              ),
              const SizedBox(height: 15,),
              total(
                text1:const Text('Grand Total',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),), 
                text2:const Text('₹799',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),)
              ),
              height1,
              divide,
              height1,
              customerDetails(),
            ],
          ),
        ),
      ),
    );
  }
}

Column orderdetail(){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('1 Item',style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.w500),),
          Row(
            children:const [
              Icon(Icons.receipt_long_outlined,color: color1,),
              SizedBox(width: 10,),
              Text('RECIEPT',style: TextStyle(fontSize: 18,color: color1,fontWeight: FontWeight.w500),),
            ],
          ), 
        ],
      ),
      height2,
      ListTile(
        contentPadding:const EdgeInsets.all(0),
        leading:Container(
          height: 80,
          decoration: BoxDecoration(border: Border.all(color: Colors.black26),borderRadius: BorderRadius.circular(3)),
          child:const Image(fit: BoxFit.contain,image :AssetImage('assets/img/tshirt1.jpg'),),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Explore | Men | Navy Blue',style: TextStyle(fontSize: 18,color: Colors.black),),
            const SizedBox(height: 5,),
            const Text('1 piece'),
            const Text('Size: XL'),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Row(
                children:[ Container(
                  width: 27,
                  height: 20,
                  decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(2),border: Border.all(color: color1)),
                  child: const Text('1',textAlign: TextAlign.center,),
                  ),
                  const Text('  x  ₹799'),
                  ],
                ),
                const Text('₹799')
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Column total({required Widget text1,required Widget text2}){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text1,
          text2,
        ],
      )
    ],
  );
}

Column customerDetails(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('CUSTOMER DETAILS',style: TextStyle(fontSize: 17,color: Colors.black54),),
          Row(
            children:const [
              Icon(Icons.share_outlined,color: color1,),
              SizedBox(width: 10,),
              Text('SHARE',style: TextStyle(color: color1,fontSize: 17),),
            ],
          ),
        ],
      ),
      height2,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
              Text('Deepa',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
              Text('+91-7829000484',style: TextStyle(color: Colors.black87,fontSize: 18)),
            ],
          ),
          Row(
            children:const [
              Icon(Icons.call,color: color1,size: 35,),
              SizedBox(width: 15,),
              Icon(Icons.whatsapp_outlined,color: Colors.green,size: 40,)
            ],
          )
        ],
      ),
      height2,
      const Text('Address',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17)),
      const Text('D 1101 Chartered Beverly',style: TextStyle(color: Colors.black87,fontSize: 18)),
      const Text('Hills ,Subramanyapura P.O',style: TextStyle(color: Colors.black87,fontSize: 18)),
      height2,
      Row(
        children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
          Text('City',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
          Text('Bangalore',style: TextStyle(color: Colors.black87,fontSize: 18)),
          ],
         ),
         const SizedBox(width: 100,),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
          Text('Pincode',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
          Text('560061',style: TextStyle(color: Colors.black87,fontSize: 18)),
          ],
         ),
        ],
      ),
      height2,
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
          Text('Payment',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
          Text('Online',style: TextStyle(color: Colors.black87,fontSize: 18)),
          ],
      ),
      height1,
      divide,
      height1,
      const Text('ADDITIONAL INFORMATION',style: TextStyle(fontSize: 17,color: Colors.black54),),
      height1,
      const Text('State',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
      const Text('Karnataka',style: TextStyle(color: Colors.black87,fontSize: 18)),
      height1,
      const Text('Email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
      const Text('greeniceaqua@gmail.com',style: TextStyle(color: Colors.black87,fontSize: 18)),
    ],
  );
}