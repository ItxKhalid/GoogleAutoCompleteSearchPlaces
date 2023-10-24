import '../controller/dashboard_controller.dart';
import '../models/fsnikeairmax_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FsnikeairmaxItemWidget extends StatelessWidget {
  FsnikeairmaxItemWidget(
    this.fsnikeairmaxItemModelObj, {
    Key? key,
    this.onTapProductItem,
  }) : super(
          key: key,
        );

  FsnikeairmaxItemModel fsnikeairmaxItemModelObj;

  var controller = Get.find<DashboardController>();

  VoidCallback? onTapProductItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 141.h,
      child: GestureDetector(
        onTap: () {
          onTapProductItem!.call();
        },
        child: Container(
          padding: EdgeInsets.all(15.h),
          decoration: AppDecoration.outlineBlue.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: fsnikeairmaxItemModelObj.image!.value,
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
                    fsnikeairmaxItemModelObj.fSNikeAirMax!.value,
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
                  fsnikeairmaxItemModelObj.price!.value,
                  style: CustomTextStyles.labelLargePrimary,
                ),
              ),
              SizedBox(height: 9.v),
              Row(
                children: [
                  Obx(
                    () => Text(
                      fsnikeairmaxItemModelObj.oldPrice!.value,
                      style: CustomTextStyles.bodySmall10.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Obx(
                      () => Text(
                        fsnikeairmaxItemModelObj.offer!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
