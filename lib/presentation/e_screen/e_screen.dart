import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_elevated_button.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_pin_code_text_field.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EScreen extends StatelessWidget {
  EScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 7.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: SizedBox(
                                  height: 838.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 24.h,
                                                    vertical: 51.v),
                                                decoration: AppDecoration
                                                    .fillWhiteA
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL50),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      SizedBox(height: 232.v),
                                                      Text(
                                                          "msg_preencha_com_seus"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleLargeOnPrimary),
                                                      CustomTextFormField(
                                                          controller:
                                                              emailController,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 27.h,
                                                                  top: 16.v,
                                                                  right: 27.h),
                                                          hintText:
                                                              "msg_insira_aqui_o_seu"
                                                                  .tr,
                                                          textInputType:
                                                              TextInputType
                                                                  .emailAddress,
                                                          borderDecoration:
                                                              TextFormFieldStyleHelper
                                                                  .outlinePrimary,
                                                          fillColor: appTheme
                                                              .blueGray100),
                                                      SizedBox(height: 16.v),
                                                      Text(
                                                          "msg_insira_aqui_a_sua"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleLargeBluegray900),
                                                      CustomPinCodeTextField(
                                                          context: context,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 1.h,
                                                                  top: 16.v),
                                                          onChanged:
                                                              (value) {}),
                                                      SizedBox(height: 24.v),
                                                      CustomElevatedButton(
                                                          height: 37.v,
                                                          width: 202.h,
                                                          text:
                                                              "msg_acesse_o_seu_perfil"
                                                                  .tr,
                                                          buttonStyle:
                                                              CustomButtonStyles
                                                                  .outlinePrimary,
                                                          onTap: () {
                                                            onTapAcesseoseu(
                                                                context);
                                                          }),
                                                      SizedBox(height: 13.v),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtPrimeiroacessoc(
                                                                context);
                                                          },
                                                          child: Text(
                                                              "msg_primeiro_acesso_clique"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .bodyMediumBluegray500)),
                                                      SizedBox(height: 5.v),
                                                      CustomElevatedButton(
                                                          height: 37.v,
                                                          width: 202.h,
                                                          text:
                                                              "msg_acesse_como_convidado"
                                                                  .tr,
                                                          leftIcon: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          5.h),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgUserSecondarycontainer)),
                                                          onTap: () {
                                                            onTapAcessecomo(
                                                                context);
                                                          },
                                                          isDisabled: true)
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgPhoto1696472795267x390,
                                            height: 267.v,
                                            width: 390.h,
                                            alignment: Alignment.topCenter),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgPhoto1696472795photoroom,
                                            height: 211.v,
                                            width: 200.h,
                                            alignment: Alignment.topCenter,
                                            margin:
                                                EdgeInsets.only(top: 221.v)),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 379.v),
                                                child: Text(
                                                    "lbl_boas_vindas".tr,
                                                    style: theme.textTheme
                                                        .headlineLarge)))
                                      ]))))
                    ])))));
  }

  /// Navigates to the bTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bTabContainerScreen.
  onTapAcesseoseu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }

  /// Navigates to the tScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the tScreen.
  onTapTxtPrimeiroacessoc(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tScreen);
  }

  /// Navigates to the bTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bTabContainerScreen.
  onTapAcessecomo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }
}
