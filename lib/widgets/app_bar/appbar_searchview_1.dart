import 'package:flutter/material.dart';
import 'package:larissa_gabriele_s_application2/core/app_export.dart';
import 'package:larissa_gabriele_s_application2/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarSearchview1 extends StatelessWidget {
  AppbarSearchview1({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 297.h,
        controller: controller,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(12.h, 3.v, 30.h, 3.v),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 30.v,
        ),
        suffix: Padding(
          padding: EdgeInsets.only(
            right: 15.h,
          ),
          child: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: Icon(
              Icons.clear,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}
