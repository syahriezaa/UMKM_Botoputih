import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web/config/routes/AppRoutes.dart';
import 'package:web/config/themes/colours.dart';
import 'package:web/constant/core/asset_const.dart';
import 'package:web/modules/features/umkm/component/umkm_card.dart';

class UmkmView extends StatelessWidget {

  const UmkmView(
      {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.w),
                  bottomRight: Radius.circular(20.w)),
              color: Colours.mushroom,
            ),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.w),
                       ),
                    color: Colours.mushroom,
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.w),
                        ),
                      child:
                     Image.asset(AssetConst.appbarBackground,height: 600.w,)

                  ),
                ),
                Container(
                  height: 600.w,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.w),
                        bottomRight: Radius.circular(20.w)),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: const [
                        0.1,
                        0.4,
                      ],
                      colors: <Color>[
                        Colours.mushroom.withOpacity(0),
                        Colours.mushroom,
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IntrinsicHeight(
                      child: Padding(
                        padding: EdgeInsets.all(20.0.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.toNamed(AppRoutes.umkm);
                              },
                              child: Text(
                                'UMKM',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(color: Colours.seashell),
                              ),
                            ),
                            const VerticalDivider(
                              color: Colours.seashell,
                              thickness: 2,
                            ),
                            TextButton(
                              onPressed: () {
                                Get.toNamed(AppRoutes.potensi);
                              },
                              child: Text('Potensi',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(color: Colours.seashell)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 0.5.sw,
                      padding: EdgeInsets.fromLTRB(0.w, 50.w, 0.w, 5.w),
                      child: Text("UMKM Desa Botoputih",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w800)),
                    ),
                    Container(
                      width: 0.5.sw,
                      padding: EdgeInsets.fromLTRB(0.w, 0.w, 20.w, 10.w),
                      alignment: Alignment.center,
                      child: Text('Desa botoputih merupakan salah satu desa yang berada di Kecamatan Bendungan, Kabupaten Trenggalek, Provinsi Jawa Timur. Desa ini juga berbatasan langsung dengan Tulungagung dan juga Ponorogo. Desa ini terdiri dari lima dusun yaitu Jambe, Mangkujayan, Krapyak, Barupetak dan juga Gangsan. Potensi terbesar yang ada di Botoputih adalah produk susu sapi perah yang dimana hal ini ditunjukkan dengan produksi susu sapi setiap harinya bisa mencapai 12 ribu liter. Potensi inilah yang akhirnya membuat para penduduk sekitar Botoputih mengembangkan UMKM terutama di produk dengan bahan baku utama susu. Selain itu UMKM yang berkembang di desa Botoputih adalah kopi dimana hal ini dikarenakan produksi kopi di desa Botoputih yang melimpah. Selain itu desa ini juga memiliki potensi wisata yang cukup menarik karena letaknya yang berada di lereng gunung Wilis. Sehingga desa ini memiliki tampilan cantik dengan udara yang segar. Selain itu pembangunan di desa Botoputih tergolong pesat dimana infrastruktur jalan telah  memadai. Sehingga Desa Botoputih ini cocok digunakan sebagai  lahan investasi baru',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colours.seashell)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              UmkmCard(
                  background: Colours.timberwolf,
                  title: "Edelwiss Coffe Roastery",
                  image: AssetConst.edelwissCoffe,
                  titleColor: Colours.mushroom,
                  desc: "Edelweiss coffee merupakan sebuah sentra pembuatan kopi lokal yang ada di Desa Botoputih, Trenggalek. Edelweiss Coffee selalu menggunakan biji kopi terbaik khas desa Botoputih,",
                  fulldesc: 'Edelweiss coffee merupakan sebuah sentra pembuatan kopi lokal yang ada di Desa Botoputih, Trenggalek. Edelweiss Coffee selalu menggunakan biji kopi terbaik khas desa Botoputih, sehingga memiliki rasa yang unik dalam setiap tegukannya. Gilingan serbuk kopi yang kasar memberikan sentuhan citarasa khas kopi tradisional. Biji kopi khas Botoputih dikeringkan dengan cara yang modern dan bersih sehingga telah memenuhi standar mutu  konsumsi.',
                  descColor: Colours.night,
                  buttonColor: Colours.night,
                wa: "082333865700",
              ),
              UmkmCard(
                background: Colours.eagle,
                title: "Cempaka Wilis",
                image: AssetConst.cempakaWilis,
                titleColor: Colours.pine,
                desc: "Cempaka Wilis merupakan UMKM lokal terbesar di Desa Botoputih yang bergerak di bidang pengolahan produk susu. UMKM ini berdiri sejak dilakukan pelatihan pembuatan produk olahan susu.",
                fulldesc: 'Cempaka Wilis merupakan UMKM lokal terbesar di Desa Botoputih yang bergerak di bidang pengolahan produk susu. UMKM ini berdiri sejak dilakukan pelatihan pembuatan produk olahan susu. Cempaka Wilis sendiri telah memiliki berbagai macam produk seperti susu steril, permen susu, dan lain-lain. Cempaka Wilis selalu menggunakan susu terbaik dari Desa Botoputih untuk produk olahannya. Sehingga produk yang dihasilkan memiliki nutrisi serta citarasa yang tidak kalah dengan pabrikan. Dengan pengolahan modern produk dari UMKM Cempaka wilis sendiri telah memenuhi standar mutu konsumsi.',
                descColor: Colours.cactus,
                buttonColor: Colours.pine,
                wa: "082333865700",
              ),],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              UmkmCard(
                  background: Colours.timberwolf,
                  title: "Utomo Farm",
                  image: AssetConst.utomoFarm,
                  titleColor: Colours.mushroom,
                  desc: "Utomo Farm merupakan UMKM di Desa Botoputih yang bergerak dibidang penjualan pakan ternak khususnya untuk sapi perah.",
                  fulldesc: 'Utomo Farm merupakan UMKM di Desa Botoputih yang bergerak dibidang penjualan pakan ternak khususnya untuk sapi perah. Selain itu Utomo Farm juga menjual sapi, pedet, peresan, dara dan dara bunting.UMKM ini tentu saja sangat membantu bagi masyarakat sekitar yang ingin untuk melakukan usaha ternak dan juga mencari pakan untuk hewan ternaknya. Dengan adanya UMKM ini masyarakat sekitar tidak perlu repot untuk ke kota jika ingin mencari pakan ternak maupun hewan ternak. ',
                  descColor: Colours.night,
                  buttonColor: Colours.night,
                  wa: "085259864917",
                ),
              UmkmCard(
                background: Colours.eagle,
                title: "Cooling Utomo",
                image: AssetConst.coolingUtomo,
                titleColor: Colours.pine,
                desc: "Cooling Utomo merupakan salah satu UMKM yang ada di desa Botoputih dan bergerak untuk membantu masyarakat dalam penjualan hasil susu.",
                fulldesc: 'Cooling Utomo merupakan salah satu UMKM yang ada di desa Botoputih dan bergerak untuk membantu masyarakat dalam penjualan hasil susu. Masyarakat sekitar biasanya akan menyetorkan hasil susunya setiap pagi dan sore hari yang dimana susu ini nantinya akan didistribusikan ke beberapa daerah khususnya Trenggalek dan Tulungagung. Tentu saja UMKM ini sangat membantu masyarakat sekitar dan juga meningkatkan ekonomi masyarakat sekitar karena penjualan susunya yang harganya jauh lebih tinggi jika dibandingkan dengan penjualan hanya di sekitar desa tersebut. ',
                descColor: Colours.cactus,
                buttonColor: Colours.pine,
                wa: "085259864917",
              ),],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [

            ],
          ),
        ],
      ),
    );
  }
}
