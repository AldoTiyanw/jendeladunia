import 'package:flutter/material.dart';
import 'package:myfirstproject/constants.dart';
import 'package:myfirstproject/screen/details/detailEnglish/detailEng1.dart';
import 'package:myfirstproject/screen/details/detailEnglish/detailEng2.dart';
import 'package:myfirstproject/screen/details/detail_screen.dart';
import 'package:myfirstproject/screen/home/components/body.dart';
import 'package:myfirstproject/screen/details/detail_screen.dart';
import 'package:myfirstproject/screen/home/components/recomended_book.dart';

class englishBook extends StatelessWidget {
  const englishBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          englishCard(
            image: "https://i.pinimg.com/564x/e5/ff/9c/e5ff9c81a77b70cea445a028a438268f.jpg",
            title: "Smart English 1",
            country: "Indonesia",
            price: 120,
            press:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetEng()));
            }
          ),
          englishCard(
            image: "https://i.pinimg.com/564x/55/37/79/553779e62ed2ae2252dda2b275666959.jpg",
            title: "English With Fun",
            country: "Indonesia",
            price: 122,
            press:(){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> DetEng2()));
            }
          ),
        ],
      ),
    );
  }
}

class englishCard extends StatelessWidget {
  const englishCard({
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

