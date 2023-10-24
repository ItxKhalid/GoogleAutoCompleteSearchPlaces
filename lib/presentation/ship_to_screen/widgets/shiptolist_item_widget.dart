import '../controller/ship_to_controller.dart';
import '../models/shiptolist_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShiptolistItemWidget extends StatelessWidget {
  ShiptolistItemWidget(
    this.shiptolistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ShiptolistItemModel shiptolistItemModelObj;

  var controller = Get.find<ShipToController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              shiptolistItemModelObj.priscekila!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 19.v),
          Container(
            width: 264.h,
            margin: EdgeInsets.only(right: 30.h),
            child: Obx(
              () => Text(
                shiptolistItemModelObj.address!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.80,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Obx(
            () => Text(
              shiptolistItemModelObj.mobileNo!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 19.v),
          Row(
            children: [
              Obx(
                () => Text(
                  shiptolistItemModelObj.edit!.value,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.h),
                child: Obx(
                  () => Text(
                    shiptolistItemModelObj.delete!.value,
                    style: CustomTextStyles.titleSmallPink300,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
