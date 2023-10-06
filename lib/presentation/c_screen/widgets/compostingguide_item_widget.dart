import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CompostingguideItemWidget extends StatelessWidget {
  CompostingguideItemWidget({
    Key? key,
    this.onTapRowguidetext,
  }) : super(
          key: key,
        );

  VoidCallback? onTapRowguidetext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFavorite,
            height: 12.v,
            width: 13.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 10.h,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                onTapRowguidetext?.call();
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
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle35,
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
                        left: 27.h,
                        top: 30.v,
                        bottom: 26.v,
                      ),
                      child: Text(
                        "msg_como_fazer_compostagem".tr,
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
            ),
          ),
        ],
      ),
    );
  }
}
