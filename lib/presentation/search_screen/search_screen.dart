import 'controller/search_controller.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_title_edittext.dart';
import 'package:e_com/widgets/app_bar/appbar_trailing_image.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart' hide SearchController;

class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(indent: 6.h),
                      SizedBox(height: 26.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtNikeAirMaxReact();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("msg_nike_air_max_2703".tr,
                                  style: theme.textTheme.bodySmall))),
                      SizedBox(height: 37.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_vapormax".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_max_2703".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 36.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_max_2704".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 37.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_vapormax2".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 35.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_nike_air_max_97".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitleEdittext(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_nike_air_max".tr,
            controller: controller.searchController),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMicIcon, margin: EdgeInsets.all(16.h))
        ]);
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  onTapTxtNikeAirMaxReact() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }
}
