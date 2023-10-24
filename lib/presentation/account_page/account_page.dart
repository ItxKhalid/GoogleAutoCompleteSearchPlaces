import 'controller/account_controller.dart';
import 'models/account_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_title.dart';
import 'package:e_com/widgets/app_bar/appbar_trailing_image.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AccountPage extends StatelessWidget {
  AccountPage({Key? key}) : super(key: key);

  AccountController controller = Get.put(AccountController(AccountModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(children: [
                  _buildAccountOption(
                      userImage: ImageConstant.imgUserPrimary,
                      orderLabel: "lbl_profile".tr,
                      onTapAccountOption: () {
                        onTapAccountOption();
                      }),
                  _buildAccountOption(
                      userImage: ImageConstant.imgBagIcon,
                      orderLabel: "lbl_order".tr),
                  _buildAccountOption(
                      userImage: ImageConstant.imgLocation,
                      orderLabel: "lbl_address".tr),
                  SizedBox(height: 5.v),
                  _buildAccountOption(
                      userImage: ImageConstant.imgCreditCardIcon,
                      orderLabel: "lbl_payment".tr,
                      onTapAccountOption: () {
                        onTapAccountOption1();
                      })
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_account".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotificationIcon,
              margin: EdgeInsets.fromLTRB(13.h, 15.v, 13.h, 16.v),
              onTap: () {
                onTapNotificationIcon();
              })
        ]);
  }

  /// Common widget
  Widget _buildAccountOption({
    required String userImage,
    required String orderLabel,
    Function? onTapAccountOption,
  }) {
    return GestureDetector(
        onTap: () {
          onTapAccountOption!.call();
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: userImage,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
                  child: Text(orderLabel,
                      style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onPrimary.withOpacity(1))))
            ])));
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapNotificationIcon() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapAccountOption() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the addPaymentScreen when the action is triggered.
  onTapAccountOption1() {
    Get.toNamed(
      AppRoutes.addPaymentScreen,
    );
  }
}
