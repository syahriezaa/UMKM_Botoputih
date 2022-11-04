import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web/config/routes/AppRoutes.dart';
import 'package:web/config/themes/colours.dart';
import 'package:web/constant/core/asset_const.dart';
import 'package:web/modules/features/umkm/component/umkm_card.dart';

class PotensiView extends StatelessWidget {

  const PotensiView(
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
                                Get.toNamed(AppRoutes.umkm, );
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
                              onPressed: () {},
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
                      child: Text("Potensi Desa Botoputih",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w800)),
                    ),
                    Container(
                      width: 0.5.sw,
                      padding: EdgeInsets.fromLTRB(0.w, 0.w, 100.w, 10.w),
                      alignment: Alignment.center,
                      child: Text(
                          "Desa botoputih merupakan salah satu desa yang berada di Kecamatan Bendungan, Kabupaten Trenggalek, Provinsi Jawa Timur. Desa ini juga berbatasan langsung dengan Tulungagung dan juga Ponorogo. Desa ini terdiri dari lima dusun yaitu Jambe, Mangkujayan, Krapyak, Barupetak dan juga Gangsan. Potensi terbesar yang ada di Botoputih adalah produk susu sapi perah yang dimana hal ini ditunjukkan dengan produksi susu sapi setiap harinya bisa mencapai 12 ribu liter. Potensi inilah yang akhirnya membuat para penduduk sekitar Botoputih mengembangkan UMKM terutama di produk dengan bahan baku utama susu. Selain itu UMKM yang berkembang di desa Botoputih adalah kopi dimana hal ini dikarenakan produksi kopi di desa Botoputih yang melimpah. Selain itu desa ini juga memiliki potensi wisata yang cukup menarik karena letaknya yang berada di lereng gunung Wilis. Sehingga desa ini memiliki tampilan cantik dengan udara yang segar. Selain itu pembangunan di desa Botoputih tergolong pesat dimana infrastruktur jalan telah  memadai. Sehingga Desa Botoputih ini cocok digunakan sebagai  lahan investasi baru.",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colours.seashell)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.w)),
              color: Colours.mushroom,
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0.w),
              child: Column(
                children: [
                  Text("Potensi Desa Botoputih",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 30.sp,color: Colours.pine),
                  ),
                  SizedBox(height: 20.w,),
                  SizedBox(height: 20.w,),
                  Text("  Desa Botoputih Memiliki potensi yang sangat besar. Desa ini mengalami perkembangan pesat dan akan terus tumbuh dikarenakan makin banyaknya bidang yang mungkin dikembangkan. Desa ini sangat terbuka dengan ide-ide baru yang dapat memberi keuntungan kepada warga dan kepada pengembang itu sendiri. Dengan sikap warga masyarakat yang terbuka tersebut membuat Desa Botoputih ini cocok untuk dijadikan lahan investasi jangka panjang yang sangat menggiurkan.",
                  style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 20.w,),
                  Text("  Di Bidang infrastruktur desa ini telah memiliki akses jalan yang mudah. Baik dari arah kota Tulungagung yang memakan waktu kurang lebih 60 menit, kota Trenggalek, dan 45 menit dari arah kota Ponorogo. Sehingga untuk pembangunan jalur distribusi kebutuhan masih masuk akal untuk dijadikan lahan investasi. Selain itu kualitas pengaspalan di sepanjang perjalanan juga sudah cukup baik dimana menggunakan aspal keras. Selain itu sepanjang perjalanan juga sedang di bangun dinding penahan tanah, dimana memperkecil kemungkinan terjadinya tanah longsor serta memungkinkan bagi kendaraan barang untuk mengakses desa ini dari ketiga kota diatas.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 20.w,),
                  Image.asset(AssetConst.antenaInternet,height: 200.w,),
                  SizedBox(height: 20.w,),
                  Text("  Desa Botoputih telah memiliki akses koneksi internet yang baik khususnya untuk pemasangan Wi-Fi. Koneksi yang digunakan merupakan koneksi wireless dikarenakan medan yang sulit untuk pemasangan kabel fiber optik maupun kabel tembaga. Namun demikian koneksi yang disediakan cukup stabil untuk penggunaan sehari-hari meskipun untuk koneksi mobile kadang dapat mengalami kendala  terutama di saat cuaca buruk. Namun apabila kita pergi ke tempat tinggi seperti lantai dua rumah koneksi bisa dikatakan sangat bagus bahkan dapat digunakan untuk layanan yang membutuhkan koneksi yang cepat. Seperti video conference dan game online.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 20.w,),
                  Image.asset(AssetConst.cempakaWilis,height: 200.w),
                  SizedBox(height: 20.w,),
                  Text("  Lokasi desa Botoputih juga sangat strategis yang dimana pada desa ini dekat dengan beberapa tempat wisata dan juga berbatasan langsung dengan kota Tulungagung dan Ponorogo. Tempat wisata yang dekat dengan desa Botoputih ialah Dilem Wilis yang terdapat di desa Dompyong Kecamatan Bendungan. Dilem Wilis merupakan agrowisata yang dimana dulunya merupakan sebuah perusahaan pengolahan biji kopi milik pemerintah Belanda. Selain itu juga dekat dengan tempat wisata Coban Rambat yang merupakan salah satu coban yang terdapat di Desa Dompyong dan dekat dengan Dilem Wilis.  ",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 20.w,),
                  Image.asset(AssetConst.proyekPembangunan,height: 200.w,),
                  SizedBox(height: 20.w,),
                  Text("  Selain itu di desa Botoputih juga terdapat pembangunan pabrik untuk pengolahan susu yang dimana ini nantinya juga akan menjadi salah satu investasi di desa tersebut. Pabrik ini berada di desa Botoputih Barat lebih tepatnya di dusun Krapyak. Adanya pembangunan pabrik memungkinkan dapat meningkatkan ekonomi masyarakat sekitar lebih baik daripada sebelumnya hal ini dikarenakan harga susu yang dijual di pabrik jauh lebih tinggi dibandingkan harga biasanya. Hal lain yang dapat meningkatkan ekonomi masyarakat karena pembangunan pabrik susu ini memungkinkan adanya karyawan pabrik dari luar kota yang pastinya membutuhkan tempat tinggal dan makan sehingga masyarakat sekitar bisa memiliki peluang kerja untuk membuka kos dan warung di sekitar wilayah pabrik. ",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
