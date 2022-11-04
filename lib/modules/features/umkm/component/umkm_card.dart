import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:web/config/themes/colours.dart';
import 'package:web/constant/core/asset_const.dart';

class UmkmCard extends StatelessWidget {
  final Color background;
  final String image;
  final String title;
  final Color titleColor;
  final String desc;
  final String fulldesc;
  final Color descColor;
  final Color buttonColor;
  final String wa;
  const UmkmCard(
      {required this.background,
        required this.image,
        required this.title,
        required this.titleColor,
        required this.desc,
        required this.fulldesc,
        required this.descColor,
        required this.buttonColor,
        required this.wa,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.w),
          color: background,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.w),
                color: background,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.w),
                child: Image.asset(
                  image,
                  height: 300.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 0.25.sw,
                  padding: EdgeInsets.all(20.w),
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colours.seashell),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.w, 0, 10.w, 0),
                  width: 0.25.sw,
                  alignment: Alignment.center,
                  child: Text(
                      desc,
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {
                          Get.defaultDialog(
                          title: title,
                          contentPadding: EdgeInsets.all(30.w),
                          content: SizedBox(
                            width: 1000.w,
                            child: Column(
                              children: [
                                Image.asset(image,height: 400.w,),
                                SizedBox(height: 30.w,),
                                Text(fulldesc,style: Theme.of(context).textTheme.bodySmall),
                                SizedBox(height: 10.w,),
                                Row(
                                  children: [
                                    SvgPicture.asset(AssetConst.ic_wa,height: 25.w,),
                                    SizedBox(width: 10.w,),
                                    Text(wa,style: Theme.of(context).textTheme.bodyMedium,),
                                  ],
                                )
                              ],
                            ),
                          ),
                            backgroundColor: background,
                        );
                          },
                        child: Text(
                          "Lebih lanjut",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
