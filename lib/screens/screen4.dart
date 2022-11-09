
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../style.dart';


class DukaanPremium extends StatefulWidget {
  const DukaanPremium({super.key});

  @override
  State<DukaanPremium> createState() => _DukaanPremiumState();
}

class _DukaanPremiumState extends State<DukaanPremium> {
  

 late YoutubePlayerController _controller;

 @override
  void initState() {
    const videoURL ='https://youtu.be/id1E0lqnUtY';
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(initialVideoId: videoID!,
    flags:const YoutubePlayerFlags(
      autoPlay: false,
      // mute: false,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [appBar(),card()],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Features',style: listText1),
                ),
                features(
                  icon: Icons.language_outlined, 
                  title: 'Custom domain name', 
                  subtitle: 'Get your own custom domain and  build your brand on the  internet.'
                ),
                height1,
                features(
                  icon: Icons.verified_outlined, 
                  title: 'Verified seller badge', 
                  subtitle: 'Get green verified badge under your store name and  build trust.'
                ),
                height1,
                features(
                  icon: Icons.laptop_mac_outlined, 
                  title: 'Dukaan for PC', 
                  subtitle: 'Access all the  exclusive premium features on Dukaan for PC.'
                ),
                height1,
                features(
                  icon: Icons.headset_mic_outlined, 
                  title: 'Priority support', 
                  subtitle: 'Get your questions resolved with our priority customer support.'
                ),
                height1,
                const Divider(thickness: 4),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('What is Dukaan Premium?',style: listText1),
                ),
                height1,
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: SizedBox(
                    // width: 200,
                    // height: 200,
                    child: YoutubePlayer(controller:_controller,showVideoProgressIndicator: true,)
                  ),
                ),
                height2,
              ],
            )
          ],
        ),
      ),
    );
  }
}

Column appBar(){
  return Column(
    children: [
      AppBar(
        toolbarHeight: 170,
        title:const Padding(
          padding: EdgeInsets.only(bottom: 115),
          child: Text('Dukaan Premium'),
        ),
        centerTitle: true,
      ),
      const SizedBox(width: double.infinity,height: 110,)
    ],
  );
}

Positioned card(){
  return Positioned(
    top: 60,
    left: 17,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      child: Container(
        width: 350,
        height: 210,
        child: Column(
          children:  [
            height2,
            const Image(image: AssetImage('assets/img/dukaan_blog.png'),width: 150,),
            height2,
            Text(
              'Get Dukaan Premium for just \n₹4,999/year',
              textAlign: TextAlign.center,
              style: card3text1,
            ),
            height2,
            Text(
              'All the advanced features for scaling your \nbusiness',
              textAlign: TextAlign.center,
              style: card3text2,
            ),
            height2
          ],
        ),
      ),
    ),
  );
}

ListTile features({required IconData icon,required String title,required String subtitle}){
  return ListTile(
    leading: CircleAvatar(
      radius: 30,
      child: CircleAvatar(
        radius: 26,
        backgroundColor: Colors.white,
        child: Icon(icon,size: 30,),
      ),
    ),
    title: Text(title,style:listTile2 ,),
    subtitle: Text(subtitle,style: listTile3,),
  );
}

