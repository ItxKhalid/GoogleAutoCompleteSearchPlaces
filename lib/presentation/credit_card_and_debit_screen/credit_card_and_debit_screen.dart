import '../credit_card_and_debit_screen/widgets/creditcardanddebit_item_widget.dart';
import 'controller/credit_card_and_debit_controller.dart';
import 'models/creditcardanddebit_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_com/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:e_com/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CreditCardAndDebitScreen extends GetWidget<CreditCardAndDebitController> {
  const CreditCardAndDebitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 8.v),
                  _buildCreditCardAndDebit()
                ])),
            bottomNavigationBar: _buildAddCard()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "msg_credit_card_and".tr,
            margin: EdgeInsets.only(left: 12.h)));
  }

  /// Section Widget
  Widget _buildCreditCardAndDebit() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 14.v);
                },
                itemCount: controller.creditCardAndDebitModelObj.value
                    .creditcardanddebitItemList.value.length,
                itemBuilder: (context, index) {
                  CreditcardanddebitItemModel model = controller
                      .creditCardAndDebitModelObj
                      .value
                      .creditcardanddebitItemList
                      .value[index];
                  return CreditcardanddebitItemWidget(model,
                      onTapCreditCardItem: () {
                    onTapCreditCardItem();
                  });
                }))));
  }

  /// Section Widget
  Widget _buildAddCard() {
    return CustomElevatedButton(
        text: "lbl_add_card".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        onPressed: () {
          onTapAddCard();
        });
  }

  /// Navigates to the lailyfaFebrinaCardScreen when the action is triggered.
  onTapCreditCardItem() {
    Get.toNamed(AppRoutes.lailyfaFebrinaCardScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the addCardScreen when the action is triggered.
  onTapAddCard() {
    Get.toNamed(
      AppRoutes.addCardScreen,
    );
  }
}
