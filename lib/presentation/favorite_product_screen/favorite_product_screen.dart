import '../favorite_product_screen/widgets/favoriteproduct_item_widget.dart';
import 'controller/favorite_product_controller.dart';
import 'models/favoriteproduct_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_com/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FavoriteProductScreen extends GetWidget<FavoriteProductController> {
  const FavoriteProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 8.v, right: 16.h),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 283.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 13.h,
                        crossAxisSpacing: 13.h),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller.favoriteProductModelObj.value
                        .favoriteproductItemList.value.length,
                    itemBuilder: (context, index) {
                      FavoriteproductItemModel model = controller
                          .favoriteProductModelObj
                          .value
                          .favoriteproductItemList
                          .value[index];
                      return FavoriteproductItemWidget(model,
                          onTapProductItem: () {
                        onTapProductItem();
                      });
                    })))));
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
            text: "msg_favorite_product".tr,
            margin: EdgeInsets.only(left: 12.h)));
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  onTapProductItem() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
