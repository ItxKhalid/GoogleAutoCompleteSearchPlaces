import '../product_detail_screen/widgets/fortyeight_item_widget.dart';
import '../product_detail_screen/widgets/products_item_widget.dart';
import '../product_detail_screen/widgets/recomended_item_widget.dart';
import '../product_detail_screen/widgets/sizes_item_widget.dart';
import 'controller/product_detail_controller.dart';
import 'models/fortyeight_item_model.dart';
import 'models/products_item_model.dart';
import 'models/recomended_item_model.dart';
import 'models/sizes_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_com/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_com/widgets/app_bar/appbar_trailing_image.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:e_com/widgets/custom_elevated_button.dart';
import 'package:e_com/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends GetWidget<ProductDetailController> {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 12.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                _buildProductOverview(),
                                SizedBox(height: 22.v),
                                _buildSelectSize(),
                                SizedBox(height: 23.v),
                                _buildSelectColor(),
                                SizedBox(height: 24.v),
                                _buildSpecifications(),
                                SizedBox(height: 23.v),
                                _buildReview(),
                                SizedBox(height: 23.v),
                                _buildYouMightAlsoLike()
                              ]))))
                ])),
            bottomNavigationBar: _buildAddToCart()));
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
            text: "msg_nike_air_max_2702".tr,
            margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNavExplore,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 15.h),
              onTap: () {
                onTapSearchIcon();
              }),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMoreIcon,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 31.h))
        ]);
  }

  /// Section Widget
  Widget _buildProductOverview() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Obx(() => CarouselSlider.builder(
          options: CarouselOptions(
              height: 238.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                controller.sliderIndex.value = index;
              }),
          itemCount: controller
              .productDetailModelObj.value.fortyeightItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            FortyeightItemModel model = controller
                .productDetailModelObj.value.fortyeightItemList.value[index];
            return FortyeightItemWidget(model);
          })),
      SizedBox(height: 16.v),
      Align(
          alignment: Alignment.center,
          child: Obx(() => SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex.value,
                  count: controller.productDetailModelObj.value
                      .fortyeightItemList.value.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                      spacing: 8,
                      activeDotColor: theme.colorScheme.primary.withOpacity(1),
                      dotColor: appTheme.blue50,
                      dotHeight: 8.v,
                      dotWidth: 8.h))))),
      SizedBox(height: 15.v),
      Align(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.only(left: 16.h, right: 25.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: SizedBox(
                            width: 275.h,
                            child: Text("msg_nike_air_zoom_pegasus".tr,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleLargeOnPrimary
                                    .copyWith(height: 1.50)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgDownload,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin:
                            EdgeInsets.only(left: 44.h, top: 2.v, bottom: 32.v))
                  ]))),
      SizedBox(height: 9.v),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: CustomRatingBar(initialRating: 4, itemSize: 16)),
      SizedBox(height: 16.v),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("lbl_299_43".tr, style: theme.textTheme.titleLarge))
    ]);
  }

  /// Section Widget
  Widget _buildSelectSize() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("lbl_select_size".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 13.v),
      SizedBox(
          height: 48.v,
          child: Obx(() => ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: controller
                  .productDetailModelObj.value.sizesItemList.value.length,
              itemBuilder: (context, index) {
                SizesItemModel model = controller
                    .productDetailModelObj.value.sizesItemList.value[index];
                return SizesItemWidget(model);
              })))
    ]);
  }

  /// Section Widget
  Widget _buildSelectColor() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text("lbl_select_color".tr,
                  style: theme.textTheme.titleSmall)),
          SizedBox(height: 12.v),
          CustomImageView(
              imagePath: ImageConstant.imgColors,
              height: 48.v,
              width: 359.h,
              margin: EdgeInsets.only(left: 7.h))
        ]));
  }

  /// Section Widget
  Widget _buildSpecifications() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_specification".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 12.v),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(bottom: 45.v),
                child: Text("lbl_shown".tr,
                    style: CustomTextStyles.bodySmallOnPrimary)),
            Container(
                width: 169.h,
                margin: EdgeInsets.only(left: 128.h),
                child: Text("msg_laser_blue_anth".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: theme.textTheme.bodySmall!.copyWith(height: 1.80)))
          ]),
          SizedBox(height: 18.v),
          Row(children: [
            Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text("lbl_style".tr,
                    style: CustomTextStyles.bodySmallOnPrimary)),
            Padding(
                padding: EdgeInsets.only(left: 234.h),
                child:
                    Text("lbl_cd0113_400".tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 19.v),
          Container(
              width: 320.h,
              margin: EdgeInsets.only(right: 31.h),
              child: Text("msg_the_nike_air_max".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(height: 1.80)))
        ]));
  }

  /// Section Widget
  Widget _buildReview() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Text("lbl_review_product".tr, style: theme.textTheme.titleSmall),
            GestureDetector(
                onTap: () {
                  onTapTxtSeeMoreLink();
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 156.h),
                    child: Text("lbl_see_more".tr,
                        style: CustomTextStyles.titleSmallPrimary)))
          ]),
          SizedBox(height: 8.v),
          Row(children: [
            CustomRatingBar(initialRating: 4, itemSize: 16),
            Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text("lbl_4_5".tr,
                    style: CustomTextStyles.labelMediumBluegray300)),
            Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text("lbl_5_review".tr,
                    style: CustomTextStyles.bodySmall10))
          ]),
          SizedBox(height: 16.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgProfilePicture,
                height: 48.adaptSize,
                width: 48.adaptSize,
                radius: BorderRadius.circular(24.h)),
            Padding(
                padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 4.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_james_lawson".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 4.v),
                      CustomRatingBar(initialRating: 4, itemSize: 16)
                    ]))
          ]),
          SizedBox(height: 18.v),
          SizedBox(
              width: 339.h,
              child: Text("msg_air_max_are_always".tr,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(height: 1.80))),
          SizedBox(height: 16.v),
          SizedBox(
              height: 72.v,
              child: Obx(() => ListView.separated(
                  padding: EdgeInsets.only(right: 112.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 12.h);
                  },
                  itemCount: controller.productDetailModelObj.value
                      .productsItemList.value.length,
                  itemBuilder: (context, index) {
                    ProductsItemModel model = controller.productDetailModelObj
                        .value.productsItemList.value[index];
                    return ProductsItemWidget(model);
                  }))),
          SizedBox(height: 16.v),
          Text("msg_december_10_2016".tr, style: CustomTextStyles.bodySmall10)
        ]));
  }

  /// Section Widget
  Widget _buildYouMightAlsoLike() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text("msg_you_might_also_like".tr,
              style: CustomTextStyles.titleSmall_1)),
      SizedBox(height: 11.v),
      Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
              height: 238.v,
              child: Obx(() => ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: controller.productDetailModelObj.value
                      .recomendedItemList.value.length,
                  itemBuilder: (context, index) {
                    RecomendedItemModel model = controller.productDetailModelObj
                        .value.recomendedItemList.value[index];
                    return RecomendedItemWidget(model);
                  }))))
    ]);
  }

  /// Section Widget
  Widget _buildAddToCart() {
    return CustomElevatedButton(
        text: "lbl_add_to_cart".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapSearchIcon() {
    Get.toNamed(
      AppRoutes.searchScreen,
    );
  }

  /// Navigates to the reviewProductScreen when the action is triggered.
  onTapTxtSeeMoreLink() {
    Get.toNamed(
      AppRoutes.reviewProductScreen,
    );
  }
}
