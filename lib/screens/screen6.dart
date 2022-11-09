import 'package:flutter/material.dart';

import '../style.dart';

class Catalouge extends StatelessWidget {
  const Catalouge({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor:const Color.fromARGB(255, 251, 240, 240),
          appBar: AppBar(
            title:const Text('Catalouge'),
            centerTitle: true,
            actions: const[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.search,size: 30,),
              )
            ],
            bottom: const TabBar(
              tabs: [
                Padding(
                  padding: EdgeInsets.only(right:15),
                  child: Text('Products',style: TextStyle(fontSize: 20),),
                ),
                Text('Categories',style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        catalouge(
                          image: 'assets/img/tshirt1.jpg',
                          name: 'Couch Potato | Women',
                          price: '₹799'
                        ),
                        catalouge(
                          image: 'assets/img/redt.jpg',
                          name: 'Couch Potato | Women',
                          price: '₹799'
                        ),
                        catalouge(
                          image: 'assets/img/mug1.jpg',
                          name: 'Mug | Explore',
                          price: '₹399'
                        ),
                        catalouge(
                          image: 'assets/img/book1.jpg',
                          name: 'Combo Blahst 1 | Pack',
                          price: '₹699'
                        ),
                        catalouge(
                          image: 'assets/img/whitet.jpg',
                          name: 'Mug | Orchid',
                          price: '₹499'
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


Card catalouge({required String image,required String name,required String price}){
  return Card(
    child: Container(
      width: 350,
      height: 185,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 110,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black12),),
                  child: Image(image: AssetImage(image),fit: BoxFit.cover,),
                ),
                const SizedBox(width: 10,),
                Container(
                  height: 117,
                  width: 220,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name,style:const TextStyle(fontSize: 18,color: Colors.black),),
                        const Icon(Icons.more_horiz_outlined),
                      ],
                    ),
                    const Text('1 Piece',style: TextStyle(fontSize: 14,color: Colors.black),),
                    const SizedBox(height: 5,),
                    Text(price,style:const TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.w500),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('In stock',style: TextStyle(fontSize: 16,color: Colors.green),),
                        Switch(value: true, onChanged: (value){})
                      ],
                    ),
                  ],
                ),
                ),
              ],
            ),
            divide,
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children:const [
              Icon(Icons.share_outlined),
              SizedBox(width: 10,),
              Text('Share Product',style: TextStyle(fontSize: 16,color: Colors.black),),
            ],),
          ],
        ),
      ),
    ),
  );
}