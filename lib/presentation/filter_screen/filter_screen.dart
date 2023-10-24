import '../filter_screen/widgets/buyingformate_item_widget.dart';
import '../filter_screen/widgets/condition_item_widget.dart';
import '../filter_screen/widgets/itemlocation_item_widget.dart';
import '../filter_screen/widgets/showonly_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/buyingformate_item_model.dart';
import 'models/condition_item_model.dart';
import 'models/itemlocation_item_model.dart';
import 'models/showonly_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_com/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:e_com/widgets/custom_elevated_button.dart';
import 'package:e_com/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FilterScreen extends GetWidget<FilterController> {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child: Column(children: [
                  SizedBox(height: 31.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildPriceRange(),
                                    SizedBox(height: 34.v),
                                    _buildCondition(),
                                    SizedBox(height: 24.v),
                                    _buildBuyingFormat(),
                                    SizedBox(height: 22.v),
                                    Text("lbl_item_location".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 13.v),
                                    _buildItemLocation(),
                                    SizedBox(height: 25.v),
                                    _buildShowOnly()
                                  ]))))
                ])),
            bottomNavigationBar: _buildApply()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 42.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgCloseIcon,
            margin: EdgeInsets.only(left: 18.h, top: 16.v, bottom: 16.v)),
        title: AppbarSubtitle(
            text: "lbl_filter_search".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildPriceRange() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_price_range".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(right: 6.h),
                child: CustomTextFormField(
                    controller: controller.priceController,
                    hintText: "lbl_1_245".tr,
                    hintStyle: CustomTextStyles.labelLargeBluegray300,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h, vertical: 15.v)))),
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: CustomTextFormField(
                    controller: controller.priceController1,
                    hintText: "lbl_9_344".tr,
                    hintStyle: CustomTextStyles.labelLargeBluegray300,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h, vertical: 15.v))))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildCondition() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_condition".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 13.v),
      Obx(() => Wrap(
          runSpacing: 9.v,
          spacing: 9.h,
          children: List<Widget>.generate(
              controller.filterModelObj.value.conditionItemList.value.length,
              (index) {
            ConditionItemModel model =
                controller.filterModelObj.value.conditionItemList.value[index];
            return ConditionItemWidget(model);
          })))
    ]);
  }

  /// Section Widget
  Widget _buildBuyingFormat() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_buying_format".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 11.v),
      Obx(() => Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children: List<Widget>.generate(
              controller.filterModelObj.value.buyingformateItemList.value
                  .length, (index) {
            BuyingformateItemModel model = controller
                .filterModelObj.value.buyingformateItemList.value[index];
            return BuyingformateItemWidget(model);
          })))
    ]);
  }

  /// Section Widget
  Widget _buildItemLocation() {
    return Obx(() => Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children: List<Widget>.generate(
            controller.filterModelObj.value.itemlocationItemList.value.length,
            (index) {
          ItemlocationItemModel model =
              controller.filterModelObj.value.itemlocationItemList.value[index];
          return ItemlocationItemWidget(model);
        })));
  }

  /// Section Widget
  Widget _buildShowOnly() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_show_only".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 10.v),
      Obx(() => Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children: List<Widget>.generate(
              controller.filterModelObj.value.showonlyItemList.value.length,
              (index) {
            ShowonlyItemModel model =
                controller.filterModelObj.value.showonlyItemList.value[index];
            return ShowonlyItemWidget(model);
          })))
    ]);
  }

  /// Section Widget
  Widget _buildApply() {
    return CustomElevatedButton(
        text: "lbl_apply".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        onPressed: () {
          onTapApply();
        });
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  onTapApply() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }
}
