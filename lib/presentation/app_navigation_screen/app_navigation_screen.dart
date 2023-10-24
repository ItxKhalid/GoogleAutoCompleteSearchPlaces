import 'controller/app_navigation_controller.dart';
import 'package:e_com/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          loginText: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Register".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Dashboard - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dashboardContainerScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Super Flash Sale".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.superFlashSaleScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Favorite Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.favoriteProductScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Product Detail".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productDetailScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Review Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewProductScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Write Review Fill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeReviewFillScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Notification Offer".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationOfferScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Notification Feed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationFeedScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Notification Activity".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationActivityScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Search Result".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchResultScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Search Result No Data Found".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchResultNoDataFoundScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "List Category".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.listCategoryScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Sort By".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sortByScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Filter".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filterScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Ship To".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shipToScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Payment Method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Choose Credit Or Debit Card".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseCreditOrDebitCardScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Success Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.successScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Change Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Order Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Add Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addAddressScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addressScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Add Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPaymentScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Credit Card And Debit".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.creditCardAndDebitScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Add Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCardScreen),
                        ),
                        _buildScreenTitle(
                          loginText: "Lailyfa Febrina Card".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.lailyfaFebrinaCardScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String loginText,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  loginText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
