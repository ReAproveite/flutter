import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class HortaemcasaItemWidget extends StatelessWidget {
  HortaemcasaItemWidget({
    Key? key,
    this.onTapHortaemcasa,
  }) : super(
          key: key,
        );

  VoidCallback? onTapHortaemcasa;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapHortaemcasa?.call();
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.outlinePrimary1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle3556x74,
              height: 56.v,
              width: 74.h,
              margin: EdgeInsets.only(
                left: 3.h,
                top: 6.v,
                bottom: 8.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                top: 23.v,
                bottom: 33.v,
              ),
              child: Text(
                "lbl_horta_em_casa".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Spacer(),
            CustomImageView(
              svgPath: ImageConstant.imgFavorite,
              height: 12.v,
              width: 13.h,
              margin: EdgeInsets.only(bottom: 58.v),
            ),
          ],
        ),
      ),
    );
  }
}
