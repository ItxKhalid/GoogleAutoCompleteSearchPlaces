import '../controller/order_controller.dart';
import '../models/orderlist_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderlistItemWidget extends StatelessWidget {
  OrderlistItemWidget(
    this.orderlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderlistItemModel orderlistItemModelObj;

  var controller = Get.find<OrderController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.v),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Obx(
                () => Text(
                  orderlistItemModelObj.price!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.5,
              child: Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Obx(
                  () => Text(
                    orderlistItemModelObj.month!.value,
                    style: CustomTextStyles.bodySmallOnPrimary_1,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 22.v),
          Divider(),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Obx(
                      () => Text(
                        orderlistItemModelObj.orderStatus!.value,
                        style: CustomTextStyles.bodySmallOnPrimary_1,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Text(
                    orderlistItemModelObj.shipping!.value,
                    style: CustomTextStyles.bodySmallOnPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Obx(
                      () => Text(
                        orderlistItemModelObj.items!.value,
                        style: CustomTextStyles.bodySmallOnPrimary_1,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Text(
                    orderlistItemModelObj.purchasedCount!.value,
                    style: CustomTextStyles.bodySmallOnPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Obx(
                    () => Text(
                      orderlistItemModelObj.price1!.value,
                      style: CustomTextStyles.bodySmallOnPrimary_1,
                    ),
                  ),
                ),
                Obx(
                  () => Text(
                    orderlistItemModelObj.price2!.value,
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
