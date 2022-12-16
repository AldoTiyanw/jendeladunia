

import 'package:flutter/material.dart';
import 'package:myfirstproject/constants.dart';
import 'package:myfirstproject/screen/details/components/detailTematik2.dart';
import 'package:myfirstproject/screen/details/components/detailTematik3.dart';
import 'package:myfirstproject/screen/details/components/detailTematik4.dart';
import 'package:myfirstproject/screen/details/detail_screen.dart';
import 'package:myfirstproject/screen/home/components/body.dart';
import 'package:myfirstproject/screen/details/detail_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class RecomendedBook extends StatefulWidget {
  const RecomendedBook({
    Key? key,
  }) : super(key: key);

  @override
  State<RecomendedBook> createState() => _RecomendedBookState();


  
}

class _RecomendedBookState extends State<RecomendedBook> {
  
  

 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          recomendedCard(
            image: "assets/images/tematik1.png",
            title: "Diriku",
            country: "Indonesia",
            price: 170,
            press:(){
             Navigator.push(context, 
             MaterialPageRoute(builder: (context) => DetailScreen())
             );
            }
          ),
          recomendedCard(
            image: "assets/images/tematik2.jpg",
            title: "Kegemaranku",
            country: "Indonesia",
            price: 180,
            press:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailTematik1()));
            } 
          ),
          recomendedCard(
            image: "assets/images/tematik3.png",
            title: "Kegiatanku",
            country: "Indonesia",
            price: 125,
            press:(){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> DetTematik3()));
            }
          ),
          recomendedCard(
            image: "assets/images/tematik4.png",
            title: "Keluargaku",
            country: "Indonesia",
            price: 145,
            press:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetTematik4()));
            },
          ),
        ],
      ),
    );
    
  }
}



class recomendedCard extends StatelessWidget {
  const recomendedCard({
    Key? key,
    required this.image,required this.title,required this.country,
    required this.price,required this.press,
  }) : super(key: key);
  final String image,title,country;
  final int price;
  final Function() press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDeafultPadding,
        top: kDeafultPadding / 2,
        bottom: kDeafultPadding * 2.5,
      ),

      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDeafultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Colors.brown.withOpacity(0.23)
                )]
                ),
              child: Row(
                children: <Widget> [
                  RichText(
                    text:TextSpan(
                      children: [TextSpan( text: "$title\n",
                      style: Theme.of(context).textTheme.button
                      ),
                      TextSpan(
                        text: "$country",style: TextStyle(
                          color: Colors.green,
                        ) 
                      )
                      ],
                    ), 
                    ),
                    Spacer(),
                    Text("$price",style: Theme.of(context).textTheme.button?.copyWith(color: Colors.brown),),
                ],
              ),
            ),
          )
          
        ],
      ),
    );
  }
}

Future<void> openUrl(String url,
    {bool forceWebView = false,bool enableJavaScript = false}
) async {
  await launch(url, forceWebView: forceWebView,enableJavaScript: enableJavaScript);
}
