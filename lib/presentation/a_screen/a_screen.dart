import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_elevated_button.dart';

class AScreen extends StatelessWidget {
  const AScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 51.h, vertical: 244.v),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPhoto1696472795photoroom,
                      height: 211.v,
                      width: 200.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 20.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgPhoto1696472795,
                      height: 179.v,
                      width: 192.h,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 33.v)),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 49.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomElevatedButton(
                                    height: 37.v,
                                    width: 140.h,
                                    text: "msg_acessar_sem_conta".tr,
                                    margin: EdgeInsets.only(top: 1.v),
                                    buttonStyle:
                                        CustomButtonStyles.outlinePrimary,
                                    onTap: () {
                                      onTapAcessarsem(context);
                                    }),
                                CustomElevatedButton(
                                    height: 37.v,
                                    width: 140.h,
                                    text: "lbl_login".tr,
                                    margin: EdgeInsets.only(left: 4.h),
                                    buttonStyle:
                                        CustomButtonStyles.outlinePrimary,
                                    onTap: () {
                                      onTapLogin(context);
                                    })
                              ]))),
                  CustomElevatedButton(
                      height: 37.v,
                      width: 288.h,
                      text: "msg_crie_sua_conta_reaproveite".tr,
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      onTap: () {
                        onTapCriesuaconta(context);
                      },
                      alignment: Alignment.bottomCenter)
                ]))));
  }

  /// Navigates to the bTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bTabContainerScreen.
  onTapAcessarsem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }

  /// Navigates to the eScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the eScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eScreen);
  }

  /// Navigates to the tScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the tScreen.
  onTapCriesuaconta(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tScreen);
  }
}
