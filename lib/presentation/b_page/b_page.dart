import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_elevated_button.dart';

class BPage extends StatefulWidget {
  const BPage({Key? key}) : super(key: key);

  @override
  BPageState createState() => BPageState();
}

class BPageState extends State<BPage>
    with AutomaticKeepAliveClientMixin<BPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 14.v),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicWidth(
                          child: Column(children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle9,
                                          height: 159.v,
                                          width: 352.h),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle10,
                                          height: 159.v,
                                          width: 352.h,
                                          margin: EdgeInsets.only(
                                              left: 8.h, top: 1.v)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle11,
                                          height: 159.v,
                                          width: 352.h,
                                          margin: EdgeInsets.only(
                                              left: 10.h, top: 1.v))
                                    ]))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 7.v, right: 8.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomElevatedButton(
                                      width: 183.h,
                                      text: "msg_materiais_org_nicos".tr,
                                      onTap: () {
                                        onTapMateriais(context);
                                      }),
                                  CustomElevatedButton(
                                      width: 183.h,
                                      text: "msg_materiais_inorg_nicos".tr,
                                      margin: EdgeInsets.only(left: 7.h),
                                      onTap: () {
                                        onTapMateriais1(context);
                                      })
                                ])),
                        SizedBox(height: 62.v),
                        Text("msg_adquira_conhecimento".tr,
                            style: CustomTextStyles.bodySmallPrimary),
                        SizedBox(height: 23.v),
                        CustomElevatedButton(
                            width: 197.h,
                            text: "msg_tempo_de_decomposi_o".tr,
                            onTap: () {
                              onTapTempode(context);
                            }),
                        SizedBox(height: 45.v),
                        CustomElevatedButton(
                            height: 41.v,
                            text: "msg_galeria_de_ins_gnias".tr,
                            buttonStyle: CustomButtonStyles.outlinePrimary1,
                            buttonTextStyle:
                                CustomTextStyles.bodyMediumWhiteA700),
                        Container(
                            margin: EdgeInsets.only(
                                left: 27.h, top: 24.v, right: 27.h),
                            decoration: AppDecoration.fillDeepOrange,
                            child: Column(children: [
                              Container(
                                  height: 17.v,
                                  width: 335.h,
                                  decoration:
                                      BoxDecoration(color: appTheme.orange300)),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: 146.v,
                                        width: 17.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.orange300)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgPhoto1696464635,
                                        height: 95.v,
                                        width: 73.h,
                                        margin: EdgeInsets.only(
                                            top: 24.v, bottom: 27.v)),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgPhoto169646463598x82,
                                        height: 98.v,
                                        width: 82.h,
                                        margin: EdgeInsets.only(
                                            top: 23.v, bottom: 25.v)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgPhoto1696464635,
                                        height: 95.v,
                                        width: 73.h,
                                        margin: EdgeInsets.only(
                                            top: 24.v, bottom: 27.v)),
                                    Container(
                                        height: 146.v,
                                        width: 17.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.orange300))
                                  ]),
                              Container(
                                  height: 17.v,
                                  width: 335.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.orange300,
                                      boxShadow: [
                                        BoxShadow(
                                            color: theme.colorScheme.primary,
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 4))
                                      ]))
                            ])),
                        SizedBox(height: 27.v),
                        Container(
                            decoration: AppDecoration.outlinePrimary,
                            child: Text("msg_perguntas_frequentes".tr,
                                style: CustomTextStyles.bodyMedium15)),
                        SizedBox(height: 6.v),
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
                      ])))
                ])))));
  }

  /// Navigates to the cScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cScreen.
  onTapMateriais(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cScreen);
  }

  /// Navigates to the iScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iScreen.
  onTapMateriais1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iScreen);
  }

  /// Navigates to the sScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the sScreen.
  onTapTempode(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sScreen);
  }
}
