import '../controller/dashboard_controller.dart';
import '../models/msnikeairmax_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MsnikeairmaxItemWidget extends StatelessWidget {
  MsnikeairmaxItemWidget(
    this.msnikeairmaxItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MsnikeairmaxItemModel msnikeairmaxItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: 141.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: msnikeairmaxItemModelObj.image!.value,
              height: 109.adaptSize,
              width: 109.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 105.h,
            child: Obx(
              () => Text(
                msnikeairmaxItemModelObj.mSNikeAirMax!.value,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelLarge!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Obx(
            () => Text(
              msnikeairmaxItemModelObj.price!.value,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              Obx(
                () => Text(
                  msnikeairmaxItemModelObj.oldPrice!.value,
                  style: CustomTextStyles.bodySmall10.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    msnikeairmaxItemModelObj.offer!.value,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
