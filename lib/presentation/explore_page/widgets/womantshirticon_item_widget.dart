import '../controller/explore_controller.dart';
import '../models/womantshirticon_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WomantshirticonItemWidget extends StatelessWidget {
  WomantshirticonItemWidget(
    this.womantshirticonItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WomantshirticonItemModel womantshirticonItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomIconButton(
            height: 70.adaptSize,
            width: 70.adaptSize,
            padding: EdgeInsets.all(23.h),
            child: CustomImageView(
              imagePath: womantshirticonItemModelObj.womanTShirtIcon!.value,
            ),
          ),
        ),
        SizedBox(height: 7.v),
        Obx(
          () => Text(
            womantshirticonItemModelObj.tShirt!.value,
            style: CustomTextStyles.labelMediumBluegray300,
          ),
        ),
      ],
    );
  }
}
