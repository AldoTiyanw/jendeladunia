import 'package:flutter/material.dart';
import 'package:myfirstproject/constants.dart';
import 'package:myfirstproject/screen/details/detail_screen.dart';
import 'package:myfirstproject/screen/home/components/body.dart';
import 'package:myfirstproject/screen/details/detail_screen.dart';
import 'package:myfirstproject/screen/home/components/recomended_book.dart';

class ArtikelPage extends StatelessWidget {
  const ArtikelPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ArtikelCard(
            image: "https://i.pinimg.com/564x/fc/59/5e/fc595e479578176fef21a74cb2c4da77.jpg",
            title: "7 TIPS MENINGKATKAN MINAT BACA ANAK ZAMAN MILENIAL",
            country: "Indonesia",
            price: 1,
            press:(){
              openUrl('https://health.detik.com/anak-dan-remaja/d-1945012/7-cara-meningkatkan-minat-baca-pada-anak',forceWebView: true);
            }
          ),
          ArtikelCard(
            image: "https://i.pinimg.com/564x/06/a3/e5/06a3e5467623190f54079e00e8d9931d.jpg",
            title: "Kenali Posisi Membaca yang Benar untuk Menghindari Gangguan Penglihatan dan Tulang Belakang",
            country: "Indonesia",
            price: 1,
            press:(){
               openUrl('https://www.sehatq.com/artikel/posisi-membaca-yang-benar',forceWebView: true);
            },
          ),
           
        ],
      ),
    );
  }
}

class ArtikelCard extends StatelessWidget {
  const ArtikelCard({
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

      width: size.width * 0.6,
      child: Column(
        children: <Widget>[
          Image.network(image),
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
                  Flexible(
                    child: RichText(
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

