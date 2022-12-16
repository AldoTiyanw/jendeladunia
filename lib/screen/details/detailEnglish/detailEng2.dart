import 'package:flutter/material.dart';
import 'package:myfirstproject/constants.dart';
import 'package:myfirstproject/screen/details/components/body.dart';
import 'package:myfirstproject/screen/home/components/recomended_book.dart';

class DetEng2 extends StatefulWidget {
  const DetEng2({ Key? key }) : super(key: key);

  

  @override
  State<DetEng2> createState() => _DetEng2State();
}

class _DetEng2State extends State<DetEng2> {
  @override
  Widget build(BuildContext context) {

    Size DetailSize = MediaQuery.of(context).size;
    return DetailScreenBook(DetailSize: DetailSize,image: "https://i.pinimg.com/564x/55/37/79/553779e62ed2ae2252dda2b275666959.jpg",
    link:'https://www.academia.edu/37217715/BUKU_BAHASA_INGGRIS_SD_KELAS_4_1',deskripsi: "Deskripsi Singkat Seri Buku Inggris Terpadu merupakan buku teks yang disusun berdasarkan Kurikulum 2013 (Revisi 2016). Dalam buku ini, muatan pelajaran disajikan secara terpadu dengan jam pelajaran sesuai porsinya."
     ,title: "English With Fun",);
  }
}


class DetailScreenBook extends StatefulWidget {
  const DetailScreenBook({
    Key? key,
    required this.DetailSize,
    required this.image,
    required this.link,
    required this.title,
    required this.deskripsi
    
  }) : super(key: key);
 

  final Size DetailSize;
  final String image,link,title,deskripsi;

  @override
  State<DetailScreenBook> createState() => _DetailScreenBookState();
}

class _DetailScreenBookState extends State<DetailScreenBook> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      
      body: Stack(
        children: [
          Container(child: Hero(
            tag: "Diriku",
            child: Image.network(widget.image,
            fit: BoxFit.fitWidth,),
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 48, left: 32),
          child:GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Align(alignment: Alignment.topLeft,
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.white,shape: BoxShape.circle
              ),
              child: Center(child: Icon(Icons.arrow_back_rounded,color: kPrimaryColor,)),
            ),
            ),
          ) ,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: widget.DetailSize.height * 0.5,
              padding: EdgeInsets.only(top: 64),
              decoration: BoxDecoration(color: Colors.grey[200],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: Container(
                    padding: EdgeInsets.only(right: 32,left: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(widget.title,
                        style: TextStyle(fontSize: 28,
                        fontWeight: FontWeight.bold,color: Colors.black,height: 1
                        ),
                        ),

                        Text("Description",
                        style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold,color: Colors.grey,
                        ),
                        ),

                        Padding(padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text("----------",style: TextStyle(fontSize: 20),)
                              ],
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text("Untuk Kelas 1",
                                style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold,color: Colors.grey,)
                        ),
                          ],
                        ),
                        ),
                        Expanded(child: SingleChildScrollView(physics: BouncingScrollPhysics(),
                          child: Text(widget.deskripsi
                          ,style: TextStyle(fontSize: 16,),),
                        )
                        )

                      ],
                    ),
                    ),
                    
                  ),
                  Container(
                    height: 100,
                    width: widget.DetailSize.width,
                    padding: EdgeInsets.only(top: 16,left: 32,bottom: 32,right: 32),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: 
                    BorderRadius.only(topLeft: Radius.circular(30))),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        width: widget.DetailSize.width / 2 - 20,
                        decoration: BoxDecoration(color: Colors.red[600],borderRadius:BorderRadius.all(Radius.circular(15)
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0,0)
                          )
                        ]
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(onPressed: (){
                                openUrl(widget.link,forceWebView: true);
                              }, child: Text("Read"))
                            ],
                          ),
                        ),
                      )
                    ],
                    ),
                  )   
                ],
              ) ,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 32,bottom: 310),
              child: Card(
                elevation: 4,
                margin: EdgeInsets.all(0),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius: 
                  BorderRadius.all(Radius.circular(15)
                  )
                ),
                child: Container(width: 100,height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(widget.image),
                    fit: BoxFit.cover)
                  ),
                ),
                
              ),
            ),
          )
        ],
      )
    );
  }
}

