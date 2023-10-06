import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_elevated_button.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HScreen extends StatelessWidget {
  HScreen({Key? key}) : super(key: key);

  TextEditingController edittextController = TextEditingController();

  TextEditingController edittextoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMdiarrowleftdropcircle,
                    margin: EdgeInsets.fromLTRB(19.h, 18.v, 347.h, 17.v),
                    onTap: () {
                      onTapMdiarrowleftdro(context);
                    }),
                styleType: Style.bgShadow),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 31.h, top: 24.v, right: 15.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse1,
                                      height: 109.v,
                                      width: 107.h,
                                      radius: BorderRadius.circular(54.h)),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 10.v, right: 26.h),
                                      decoration: AppDecoration.outlinePrimary,
                                      child: Text("lbl_nome".tr,
                                          style: CustomTextStyles.bodyMedium15))
                                ]),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 18.v, bottom: 53.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 1.h),
                                          child: Row(children: [
                                            Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 4.v),
                                                decoration: AppDecoration
                                                    .outlinePrimary,
                                                child: Text("lbl_nome".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15)),
                                            Container(
                                                margin: EdgeInsets.only(
                                                    left: 17.h, top: 4.v),
                                                decoration: AppDecoration
                                                    .outlinePrimary,
                                                child: Text(
                                                    "msg_nicolle_souza_santos"
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15))
                                          ])),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 1.h, top: 8.v),
                                          child: Row(children: [
                                            Container(
                                                decoration: AppDecoration
                                                    .outlinePrimary,
                                                child: Text("lbl_tel".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15)),
                                            Container(
                                                margin:
                                                    EdgeInsets.only(left: 32.h),
                                                decoration: AppDecoration
                                                    .outlinePrimary,
                                                child: Text(
                                                    "msg_xx_x_xxxx_xxxx".tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium15))
                                          ])),
                                      SizedBox(height: 8.v),
                                      Row(children: [
                                        Container(
                                            decoration:
                                                AppDecoration.outlinePrimary,
                                            child: Text("lbl_end".tr,
                                                style: CustomTextStyles
                                                    .bodyMedium15)),
                                        Container(
                                            margin: EdgeInsets.only(left: 13.h),
                                            decoration:
                                                AppDecoration.outlinePrimary,
                                            child: Text(
                                                "msg_rua_xx_n_x_embu".tr,
                                                style: CustomTextStyles
                                                    .bodyMedium15))
                                      ])
                                    ]))
                          ])),
                  SizedBox(height: 10.v),
                  CustomTextFormField(
                      width: 261.h, controller: edittextController),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(left: 71.h, top: 16.v),
                          decoration: AppDecoration.outlinePrimary,
                          child: Text("lbl_telefone".tr,
                              style: CustomTextStyles.bodyMedium15))),
                  SizedBox(height: 16.v),
                  CustomTextFormField(
                      width: 261.h,
                      controller: edittextoneController,
                      textInputAction: TextInputAction.done),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(left: 71.h, top: 12.v),
                          decoration: AppDecoration.outlinePrimary,
                          child: Text("lbl_endere_o".tr,
                              style: CustomTextStyles.bodyMedium15))),
                  SizedBox(height: 20.v),
                  Container(
                      height: 39.v,
                      width: 261.h,
                      decoration: BoxDecoration(
                          color: appTheme.teal70001,
                          borderRadius: BorderRadius.circular(15.h))),
                  SizedBox(height: 12.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomElevatedButton(
                        height: 39.v,
                        width: 100.h,
                        text: "lbl_salvar".tr,
                        buttonStyle: CustomButtonStyles.fillCyan,
                        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
                        onTap: () {
                          onTapSalvar(context);
                        }),
                    CustomElevatedButton(
                        height: 39.v,
                        width: 100.h,
                        text: "lbl_cancelar".tr,
                        margin: EdgeInsets.only(left: 23.h),
                        buttonStyle: CustomButtonStyles.fillDeepOrange,
                        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
                        onTap: () {
                          onTapCancelar(context);
                        })
                  ]),
                  SizedBox(height: 78.v),
                  CustomElevatedButton(
                      height: 39.v,
                      text: "msg_minhas_conquistas".tr,
                      buttonStyle: CustomButtonStyles.fillOnPrimary,
                      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 26.h, top: 8.v, right: 26.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgPhoto1696464635photoroom,
                                height: 102.v,
                                width: 75.h,
                                margin: EdgeInsets.only(top: 4.v, bottom: 7.v)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgPhoto1696464635109x79,
                                height: 109.v,
                                width: 79.h,
                                margin:
                                    EdgeInsets.only(left: 10.h, bottom: 4.v)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgPhoto1696464635photoroom,
                                height: 102.v,
                                width: 75.h,
                                margin: EdgeInsets.only(
                                    left: 10.h, top: 4.v, bottom: 7.v)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgPhoto1696464635109x79,
                                height: 109.v,
                                width: 79.h,
                                margin: EdgeInsets.only(left: 10.h, top: 4.v))
                          ])),
                  SizedBox(height: 4.v),
                  CustomElevatedButton(
                      height: 39.v,
                      width: 166.h,
                      text: "msg_sair_de_sua_conta".tr,
                      buttonStyle: CustomButtonStyles.fillTeal,
                      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
                      onTap: () {
                        onTapSairdesua(context);
                      }),
                  SizedBox(height: 18.v),
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

  /// Navigates to the bTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bTabContainerScreen.
  onTapSalvar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }

  /// Navigates to the bTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bTabContainerScreen.
  onTapCancelar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }

  /// Navigates to the aScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the aScreen.
  onTapSairdesua(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aScreen);
  }
}
