import 'package:get/get.dart';
import 'package:web/config/routes/AppRoutes.dart';
import 'package:web/modules/features/potensi/view/potensi_view.dart';
import 'package:web/modules/features/umkm/view/umkm_view.dart';

class AppPages {
  AppPages._();
  static List<GetPage> getPages() {
    return [
      ///Modul UMKM
      GetPage(
        name: AppRoutes.umkm,
        page: () => UmkmView(),
      ),

      ///Modul Potensi
      GetPage(
        name: AppRoutes.potensi,
        page: () => PotensiView(),
      )
    ];
  }
}
