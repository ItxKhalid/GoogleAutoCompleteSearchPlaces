import '../controller/super_flash_sale_controller.dart';
import '../models/superflashsale_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SuperflashsaleItemWidget extends StatelessWidget {
  SuperflashsaleItemWidget(
    this.superflashsaleItemModelObj, {
    Key? key,
    this.onTapProductItem,
  }) : super(
          key: key,
        );

  SuperflashsaleItemModel superflashsaleItemModelObj;

  var controller = Get.find<SuperFlashSaleController>();

  VoidCallback? onTapProductItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductItem!.call();
      },
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineBlue50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: superflashsaleItemModelObj.image!.value,
                height: 133.adaptSize,
                width: 133.adaptSize,
                radius: BorderRadius.circular(
                  5.h,
                ),
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              width: 107.h,
              child: Obx(
                () => Text(
                  superflashsaleItemModelObj.nikeAirMaxReact!.value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.v),
            CustomRatingBar(
              ignoreGestures: true,
              initialRating: 5,
            ),
            SizedBox(height: 18.v),
            Obx(
              () => Text(
                superflashsaleItemModelObj.price!.value,
                style: CustomTextStyles.labelLargePrimary,
              ),
            ),
            SizedBox(height: 5.v),
            Row(
              children: [
                Obx(
                  () => Text(
                    superflashsaleItemModelObj.oldPrice!.value,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Obx(
                    () => Text(
                      superflashsaleItemModelObj.offer!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
