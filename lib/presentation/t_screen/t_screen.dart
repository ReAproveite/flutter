import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_elevated_button.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TScreen extends StatelessWidget {
  TScreen({Key? key}) : super(key: key);

  TextEditingController edittextController = TextEditingController();

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
                    margin: EdgeInsets.fromLTRB(17.h, 18.v, 349.h, 17.v),
                    onTap: () {
                      onTapMdiarrowleftdro(context);
                    }),
                styleType: Style.bgShadow),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgUser,
                          height: 90.v,
                          width: 89.h,
                          margin: EdgeInsets.only(left: 37.h, top: 19.v)),
                      Container(
                          margin: EdgeInsets.only(left: 42.h, top: 36.v),
                          decoration: AppDecoration.outlinePrimary,
                          child: Text("msg_insira_seu_nome".tr,
                              style: CustomTextStyles.bodyMedium15)),
                      CustomTextFormField(
                          width: 256.h,
                          controller: edittextController,
                          margin: EdgeInsets.only(left: 39.h, top: 18.v),
                          textInputAction: TextInputAction.done,
                          borderDecoration: TextFormFieldStyleHelper.fillTeal,
                          fillColor: appTheme.teal400),
                      Container(
                          margin: EdgeInsets.only(left: 42.h, top: 20.v),
                          decoration: AppDecoration.outlinePrimary,
                          child: Text("msg_insira_seu_telefone".tr,
                              style: CustomTextStyles.bodyMedium15)),
                      Container(
                          height: 30.v,
                          width: 256.h,
                          margin: EdgeInsets.only(left: 39.h, top: 21.v),
                          decoration: BoxDecoration(
                              color: appTheme.teal400,
                              borderRadius: BorderRadius.circular(15.h))),
                      Container(
                          margin: EdgeInsets.only(left: 42.h, top: 18.v),
                          decoration: AppDecoration.outlinePrimary,
                          child: Text("msg_insira_seu_endere_o".tr,
                              style: CustomTextStyles.bodyMedium15)),
                      Container(
                          height: 30.v,
                          width: 256.h,
                          margin: EdgeInsets.only(left: 39.h, top: 21.v),
                          decoration: BoxDecoration(
                              color: appTheme.teal400,
                              borderRadius: BorderRadius.circular(15.h))),
                      Padding(
                          padding: EdgeInsets.only(left: 53.h, top: 18.v),
                          child: Row(children: [
                            CustomElevatedButton(
                                height: 39.v,
                                width: 100.h,
                                text: "lbl_salvar".tr,
                                buttonStyle: CustomButtonStyles.fillCyan,
                                buttonTextStyle:
                                    CustomTextStyles.bodyLargeWhiteA700,
                                onTap: () {
                                  onTapSalvar(context);
                                }),
                            CustomElevatedButton(
                                height: 39.v,
                                width: 100.h,
                                text: "lbl_cancelar".tr,
                                margin: EdgeInsets.only(left: 23.h),
                                buttonStyle: CustomButtonStyles.fillDeepOrange,
                                buttonTextStyle:
                                    CustomTextStyles.bodyLargeWhiteA700,
                                onTap: () {
                                  onTapCancelar(context);
                                })
                          ])),
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

  /// Navigates to the bTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bTabContainerScreen.
  onTapSalvar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }

  /// Navigates to the aScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the aScreen.
  onTapCancelar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aScreen);
  }
}
