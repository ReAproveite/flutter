import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/custom_app_bar.dart';

class SScreen extends StatelessWidget {
  const SScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 36.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMdiarrowleftdropcircle,
                    margin:
                        EdgeInsets.only(left: 12.h, top: 15.v, bottom: 20.v),
                    onTap: () {
                      onTapMdiarrowleftdro(context);
                    }),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMdiaccountcircle,
                      margin: EdgeInsets.fromLTRB(9.h, 15.v, 9.h, 20.v),
                      onTap: () {
                        onTapMdiaccountcircl(context);
                      })
                ],
                styleType: Style.bgShadow),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              decoration: AppDecoration.outlinePrimary,
                              child: Text("msg_tempo_de_decomposi_o".tr,
                                  style: theme.textTheme.titleLarge))),
                      Container(
                          width: 360.h,
                          margin: EdgeInsets.only(
                              left: 7.h, top: 42.v, right: 23.h),
                          decoration: AppDecoration.outlinePrimary,
                          child: Text("msg_alum_nio_200_a".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge)),
                      Spacer(),
                      Container(
                          height: 59.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary,
                              boxShadow: [
                                BoxShadow(
                                    color: theme.colorScheme.primary,
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(0, 4))
                              ]))
                    ]))));
  }

  /// Navigates to the aScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the aScreen.
  onTapMdiarrowleftdro(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aScreen);
  }

  /// Navigates to the hScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the hScreen.
  onTapMdiaccountcircl(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hScreen);
  }
}
