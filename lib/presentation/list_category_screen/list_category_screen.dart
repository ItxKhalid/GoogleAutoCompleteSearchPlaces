import 'controller/list_category_controller.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_com/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ListCategoryScreen extends GetWidget<ListCategoryController> {
  const ListCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildCategoryOption(
                              userImage: ImageConstant.imgArrowLeftPrimary,
                              userLabel: "lbl_shirt".tr,
                              onTapBikiniIcon: () {
                                onTapArrowLeft1();
                              }),
                          _buildCategoryOption(
                              userImage: ImageConstant.imgBikiniIcon,
                              userLabel: "lbl_bikini".tr),
                          _buildCategoryOption(
                              userImage: ImageConstant.imgClock,
                              userLabel: "lbl_dress".tr),
                          _buildCategoryOption(
                              userImage: ImageConstant.imgManWorkEquipment,
                              userLabel: "lbl_work_equipment".tr),
                          _buildCategoryOption(
                              userImage: ImageConstant.imgTrash,
                              userLabel: "lbl_man_pants".tr),
                          _buildCategoryOption(
                              userImage: ImageConstant.imgTicket,
                              userLabel: "lbl_man_shoes".tr),
                          _buildCategoryOption(
                              userImage: ImageConstant.imgForward,
                              userLabel: "lbl_man_underwear".tr),
                          _buildCategoryOption(
                              userImage: ImageConstant.imgAirplane,
                              userLabel: "lbl_man_t_shirt".tr),
                          _buildCategoryOption(
                              userImage: ImageConstant.imgTrashPrimary,
                              userLabel: "lbl_woman_bag".tr),
                          _buildCategoryOption(
                              userImage: ImageConstant.imgWomanPantsIcon,
                              userLabel: "lbl_woman_pants".tr),
                          _buildCategoryOption(
                              userImage: ImageConstant.imgWomanShoesIcon,
                              userLabel: "lbl_high_heels".tr)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_category".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildCategoryOption({
    required String userImage,
    required String userLabel,
    Function? onTapBikiniIcon,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: userImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              onTap: () {
                onTapBikiniIcon!.call();
              }),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text(userLabel,
                  style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(1))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapArrowLeft1() {
    Get.back();
  }
}
