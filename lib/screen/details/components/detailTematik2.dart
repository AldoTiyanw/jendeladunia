
import 'package:flutter/material.dart';
import 'package:myfirstproject/constants.dart';
import 'package:myfirstproject/screen/details/components/body.dart';
import 'package:myfirstproject/screen/details/detail_screen.dart';
import 'package:myfirstproject/screen/home/components/recomended_book.dart';



class DetailTematik1 extends StatelessWidget {
  const DetailTematik1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size DetailSize = MediaQuery.of(context).size;
    return DetailScreenBook(DetailSize: DetailSize, image: "assets/images/tematik2.jpg", link: 'https://www.lamperan.net/2020/02/buku-siswa-kelas-1-kurikulum-edisi.html',
    deskripsi: "Deskripsi Singkat Seri Buku Tematik Terpadu merupakan buku teks yang disusun berdasarkan Kurikulum 2013 (Revisi 2016). Dalam buku ini, muatan pelajaran disajikan secara terpadu dengan jam pelajaran sesuai porsinya.",
    title: "Kegemaranku",
    );
  }
}