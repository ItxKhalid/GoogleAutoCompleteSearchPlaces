import '../controller/favorite_product_controller.dart';
import '../models/favoriteproduct_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoriteproductItemWidget extends StatelessWidget {
  FavoriteproductItemWidget(
    this.favoriteproductItemModelObj, {
    Key? key,
    this.onTapProductItem,
  }) : super(
          key: key,
        );

  FavoriteproductItemModel favoriteproductItemModelObj;

  var controller = Get.find<FavoriteProductController>();

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
                imagePath: favoriteproductItemModelObj.image!.value,
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
                  favoriteproductItemModelObj.nikeAirMaxReact!.value,
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
              initialRating: 4,
            ),
            SizedBox(height: 18.v),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        favoriteproductItemModelObj.price!.value,
                        style: CustomTextStyles.labelLargePrimary,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 91.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => Text(
                              favoriteproductItemModelObj.oldPrice!.value,
                              style: CustomTextStyles.bodySmall10.copyWith(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                          Obx(
                            () => Text(
                              favoriteproductItemModelObj.offer!.value,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTrashIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 17.h,
                    top: 14.v,
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
