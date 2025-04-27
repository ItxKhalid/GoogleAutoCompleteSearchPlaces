import '../cart_page/widgets/cartlist_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_model.dart';
import 'models/cartlist_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_title.dart';
import 'package:e_com/widgets/app_bar/appbar_trailing_image.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:e_com/widgets/custom_elevated_button.dart';
import 'package:e_com/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  CartController controller = Get.put(CartController(CartModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v),
                child: Column(children: [
                  _buildCartList(),
                  SizedBox(height: 52.v),
                  _buildCouponCodeRow(),
                  SizedBox(height: 16.v),
                  _buildTotalPriceDetails(),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                      text: "lbl_check_out".tr,
                      onPressed: () {
                        onTapCheckOut();
                      }),
                  SizedBox(height: 8.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_your_cart".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotificationIcon,
              margin: EdgeInsets.fromLTRB(13.h, 15.v, 13.h, 16.v),
              onTap: () {
                onTapNotificationIcon();
              })
        ]);
  }

  /// Section Widget
  Widget _buildCartList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: controller.cartModelObj.value.cartlistItemList.value.length,
        itemBuilder: (context, index) {
          CartlistItemModel model =
              controller.cartModelObj.value.cartlistItemList.value[index];
          return CartlistItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildCouponCodeRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomTextFormField(
              controller: controller.cuponCodeController,
              hintText: "msg_enter_cupon_code".tr,
              textInputAction: TextInputAction.done,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.h, vertical: 19.v))),
      CustomElevatedButton(
          width: 87.h,
          text: "lbl_apply".tr,
          buttonStyle: CustomButtonStyles.fillPrimary,
          buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer)
    ]);
  }

  /// Section Widget
  Widget _buildTotalPriceDetails() {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineBlue50
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("lbl_items_3".tr, style: theme.textTheme.bodySmall),
                Text("lbl_598_86".tr,
                    style: CustomTextStyles.bodySmallOnPrimary)
              ]),
              SizedBox(height: 16.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text("lbl_shipping".tr,
                        style: theme.textTheme.bodySmall)),
                Text("lbl_40_00".tr, style: CustomTextStyles.bodySmallOnPrimary)
              ]),
              SizedBox(height: 14.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text("lbl_import_charges".tr,
                        style: theme.textTheme.bodySmall)),
                Text("lbl_128_00".tr,
                    style: CustomTextStyles.bodySmallOnPrimary)
              ]),
              SizedBox(height: 12.v),
              Divider(),
              SizedBox(height: 10.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("lbl_total_price".tr, style: theme.textTheme.labelLarge),
                Text("lbl_766_86".tr, style: CustomTextStyles.labelLargePrimary)
              ])
            ]));
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapNotificationIcon() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }

  /// Navigates to the shipToScreen when the action is triggered.
  onTapCheckOut() {
    Get.toNamed(
      AppRoutes.shipToScreen,
    );
  }
}
