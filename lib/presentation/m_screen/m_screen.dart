import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_elevated_button.dart';

class MScreen extends StatelessWidget {
  const MScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 37.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMdiarrowleftdropcircle,
                    margin:
                        EdgeInsets.only(left: 13.h, top: 17.v, bottom: 18.v),
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
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Container(
                      decoration: AppDecoration.outlinePrimary,
                      child: Text("msg_caldo_de_legumes".tr,
                          style: theme.textTheme.titleLarge)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 360.h,
                          margin: EdgeInsets.only(
                              left: 6.h, top: 26.v, right: 24.h),
                          decoration: AppDecoration.outlinePrimary,
                          child: Text("msg_receita_de_caldo".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge))),
                  SizedBox(height: 57.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle463,
                      height: 194.v,
                      width: 259.h,
                      radius: BorderRadius.circular(15.h)),
                  SizedBox(height: 13.v),
                  CustomElevatedButton(
                      width: 107.h, text: "lbl_re_aproveitado".tr),
                  SizedBox(height: 12.v),
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
