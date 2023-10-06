import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';
import 'package:larissa_gabriele_s_application2/presentation/b_page/b_page.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:larissa_gabriele_s_application2/widgets/app_bar/custom_app_bar.dart';

class BTabContainerScreen extends StatefulWidget {
  const BTabContainerScreen({Key? key}) : super(key: key);

  @override
  BTabContainerScreenState createState() => BTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class BTabContainerScreenState extends State<BTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 38.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMdiarrowleftdropcircle,
                    margin:
                        EdgeInsets.only(left: 14.h, top: 15.v, bottom: 20.v),
                    onTap: () {
                      onTapMdiarrowleftdro(context);
                    }),
                centerTitle: true,
                title: AppbarSearchview(
                    hintText: "", controller: searchController),
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
                  SizedBox(height: 14.v),
                  Container(
                      height: 32.v,
                      width: 373.h,
                      child: TabBar(
                          controller: tabviewController,
                          labelPadding: EdgeInsets.zero,
                          tabs: [
                            Tab(child: Text("msg_encontre_um_ponto".tr)),
                            Tab(child: Text("msg_tipos_de_descarte".tr))
                          ])),
                  SizedBox(
                      height: 739.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [BPage(), BPage()]))
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
