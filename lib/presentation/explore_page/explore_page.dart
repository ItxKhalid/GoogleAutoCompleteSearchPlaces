import '../explore_page/widgets/manworkequipment_item_widget.dart';
import '../explore_page/widgets/womantshirticon_item_widget.dart';
import 'controller/explore_controller.dart';
import 'models/explore_model.dart';
import 'models/manworkequipment_item_model.dart';
import 'models/womantshirticon_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_title_searchview.dart';
import 'package:e_com/widgets/app_bar/appbar_trailing_image.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {
  ExplorePage({Key? key}) : super(key: key);

  ExploreController controller = Get.put(ExploreController(ExploreModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                child: Column(children: [
                  _buildManFashion(),
                  SizedBox(height: 37.v),
                  _buildWomanFashion(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search_product".tr,
            controller: controller.searchController),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgDownload,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h)),
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h),
              child: Stack(alignment: Alignment.topRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgNotificationIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                    onTap: () {
                      onTapImgNotificationIcon();
                    }),
                CustomImageView(
                    imagePath: ImageConstant.imgClosePink300,
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    alignment: Alignment.topRight,
                    margin:
                        EdgeInsets.only(left: 14.h, right: 2.h, bottom: 16.v))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildManFashion() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_man_fashion".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 13.v),
      Obx(() => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 94.v,
              crossAxisCount: 4,
              mainAxisSpacing: 21.h,
              crossAxisSpacing: 21.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .exploreModelObj.value.manworkequipmentItemList.value.length,
          itemBuilder: (context, index) {
            ManworkequipmentItemModel model = controller
                .exploreModelObj.value.manworkequipmentItemList.value[index];
            return ManworkequipmentItemWidget(model);
          }))
    ]);
  }

  /// Section Widget
  Widget _buildWomanFashion() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_woman_fashion".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 13.v),
      Obx(() => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 93.v,
              crossAxisCount: 4,
              mainAxisSpacing: 21.h,
              crossAxisSpacing: 21.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .exploreModelObj.value.womantshirticonItemList.value.length,
          itemBuilder: (context, index) {
            WomantshirticonItemModel model = controller
                .exploreModelObj.value.womantshirticonItemList.value[index];
            return WomantshirticonItemWidget(model);
          }))
    ]);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapImgNotificationIcon() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }
}
