import '../choose_credit_or_debit_card_screen/widgets/creditcard_item_widget.dart';
import 'controller/choose_credit_or_debit_card_controller.dart';
import 'models/creditcard_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_com/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_com/widgets/app_bar/appbar_trailing_image.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:e_com/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ChooseCreditOrDebitCardScreen
    extends GetWidget<ChooseCreditOrDebitCardController> {
  const ChooseCreditOrDebitCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                child: Column(children: [
                  _buildCreditCard(),
                  SizedBox(height: 16.v),
                  Obx(() => SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: controller.sliderIndex.value,
                          count: controller.chooseCreditOrDebitCardModelObj
                              .value.creditcardItemList.value.length,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor:
                                  theme.colorScheme.primary.withOpacity(1),
                              dotColor: appTheme.blue50,
                              dotHeight: 8.v,
                              dotWidth: 8.h)))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildPayButton()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_choose_card".tr, margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPlusIcon,
              margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildCreditCard() {
    return Obx(() => CarouselSlider.builder(
        options: CarouselOptions(
            height: 190.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              controller.sliderIndex.value = index;
            }),
        itemCount: controller.chooseCreditOrDebitCardModelObj.value
            .creditcardItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          CreditcardItemModel model = controller.chooseCreditOrDebitCardModelObj
              .value.creditcardItemList.value[index];
          return CreditcardItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildPayButton() {
    return CustomElevatedButton(
        text: "lbl_pay_766_86".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        onPressed: () {
          onTapPayButton();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the successScreen when the action is triggered.
  onTapPayButton() {
    Get.toNamed(
      AppRoutes.successScreen,
    );
  }
}
