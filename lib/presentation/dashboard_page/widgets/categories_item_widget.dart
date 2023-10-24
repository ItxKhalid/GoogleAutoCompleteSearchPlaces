import '../controller/dashboard_controller.dart';
import '../models/categories_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(
    this.categoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriesItemModel categoriesItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 15.v),
        child: Column(
          children: [
            Obx(
              () => CustomIconButton(
                height: 70.adaptSize,
                width: 70.adaptSize,
                padding: EdgeInsets.all(23.h),
                child: CustomImageView(
                  imagePath: categoriesItemModelObj.arrowLeft!.value,
                ),
              ),
            ),
            SizedBox(height: 7.v),
            Obx(
              () => Text(
                categoriesItemModelObj.manShirt!.value,
                style: CustomTextStyles.bodySmall10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
