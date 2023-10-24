import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/fsnikeairmax_item_widget.dart';
import '../dashboard_page/widgets/msnikeairmax_item_widget.dart';
import '../dashboard_page/widgets/slider_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/categories_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'models/dashboard_model.dart';
import 'models/fsnikeairmax_item_model.dart';
import 'models/msnikeairmax_item_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_com/core/app_export.dart';
import 'package:e_com/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_com/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:e_com/widgets/app_bar/appbar_trailing_image.dart';
import 'package:e_com/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSlider(),
                              SizedBox(height: 16.v),
                              Obx(() => Container(
                                  height: 8.v,
                                  margin: EdgeInsets.only(left: 135.h),
                                  child: AnimatedSmoothIndicator(
                                      activeIndex: controller.sliderIndex.value,
                                      count: controller.dashboardModelObj.value
                                          .sliderItemList.value.length,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 8,
                                          activeDotColor: theme
                                              .colorScheme.primary
                                              .withOpacity(1),
                                          dotColor: appTheme.blue50,
                                          dotHeight: 8.v,
                                          dotWidth: 8.h)))),
                              SizedBox(height: 25.v),
                              _buildCategories(),
                              SizedBox(height: 23.v),
                              _buildFlashSaleHeader(),
                              SizedBox(height: 12.v),
                              _buildFsNikeAirMax(),
                              SizedBox(height: 23.v),
                              _buildMegaSaleHeader(),
                              SizedBox(height: 10.v),
                              _buildMsNikeAirMax(),
                              SizedBox(height: 29.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRecomendedProduct,
                                  height: 206.v,
                                  width: 343.h,
                                  radius: BorderRadius.circular(5.h)),
                              SizedBox(height: 16.v),
                              _buildDashboard()
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgSearch,
            margin: EdgeInsets.only(left: 32.h, top: 20.v, bottom: 20.v)),
        title: AppbarSubtitleOne(
            text: "lbl_search_product".tr,
            margin: EdgeInsets.only(left: 8.h),
            onTap: () {
              onTapSearchProduct();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgDownload,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h),
              onTap: () {
                onTapDownload();
              }),
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h),
              child: Stack(alignment: Alignment.topRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgNotificationIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                    onTap: () {
                      onTapImgNotificationIcon();
                    }),
                CustomImageView(
                    imagePath: ImageConstant.imgClosePink300,
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    alignment: Alignment.topRight,
                    margin:
                        EdgeInsets.only(left: 14.h, right: 2.h, bottom: 16.v))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildSlider() {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child: Obx(() => CarouselSlider.builder(
            options: CarouselOptions(
                height: 206.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  controller.sliderIndex.value = index;
                }),
            itemCount:
                controller.dashboardModelObj.value.sliderItemList.value.length,
            itemBuilder: (context, index, realIndex) {
              SliderItemModel model = controller
                  .dashboardModelObj.value.sliderItemList.value[index];
              return SliderItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildCategories() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 16.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("lbl_category".tr, style: theme.textTheme.titleSmall),
            GestureDetector(
                onTap: () {
                  onTapTxtMoreCategoryLink();
                },
                child: Text("lbl_more_category".tr,
                    style: CustomTextStyles.titleSmallPrimary))
          ])),
      SizedBox(height: 10.v),
      SizedBox(
          height: 108.v,
          child: Obx(() => ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 12.h);
              },
              itemCount: controller
                  .dashboardModelObj.value.categoriesItemList.value.length,
              itemBuilder: (context, index) {
                CategoriesItemModel model = controller
                    .dashboardModelObj.value.categoriesItemList.value[index];
                return CategoriesItemWidget(model);
              })))
    ]);
  }

  /// Section Widget
  Widget _buildFlashSaleHeader() {
    return GestureDetector(
        onTap: () {
          onTapFlashSaleHeader();
        },
        child: Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_flash_sale".tr, style: theme.textTheme.titleSmall),
                  Text("lbl_see_more".tr,
                      style: CustomTextStyles.titleSmallPrimary)
                ])));
  }

  /// Section Widget
  Widget _buildFsNikeAirMax() {
    return SizedBox(
        height: 238.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .dashboardModelObj.value.fsnikeairmaxItemList.value.length,
            itemBuilder: (context, index) {
              FsnikeairmaxItemModel model = controller
                  .dashboardModelObj.value.fsnikeairmaxItemList.value[index];
              return FsnikeairmaxItemWidget(model, onTapProductItem: () {
                onTapProductItem();
              });
            })));
  }

  /// Section Widget
  Widget _buildMegaSaleHeader() {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child:
                  Text("lbl_mega_sale".tr, style: theme.textTheme.titleSmall)),
          Text("lbl_see_more".tr, style: CustomTextStyles.titleSmallPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildMsNikeAirMax() {
    return SizedBox(
        height: 238.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller
                .dashboardModelObj.value.msnikeairmaxItemList.value.length,
            itemBuilder: (context, index) {
              MsnikeairmaxItemModel model = controller
                  .dashboardModelObj.value.msnikeairmaxItemList.value[index];
              return MsnikeairmaxItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildDashboard() {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 283.v,
                crossAxisCount: 2,
                mainAxisSpacing: 13.h,
                crossAxisSpacing: 13.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .dashboardModelObj.value.dashboardItemList.value.length,
            itemBuilder: (context, index) {
              DashboardItemModel model = controller
                  .dashboardModelObj.value.dashboardItemList.value[index];
              return DashboardItemWidget(model);
            })));
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapSearchProduct() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  /// Navigates to the favoriteProductScreen when the action is triggered.
  onTapDownload() {
    Get.toNamed(AppRoutes.favoriteProductScreen);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapImgNotificationIcon() {
    Get.toNamed(AppRoutes.notificationScreen);
  }

  /// Navigates to the listCategoryScreen when the action is triggered.
  onTapTxtMoreCategoryLink() {
    Get.toNamed(AppRoutes.listCategoryScreen);
  }

  /// Navigates to the superFlashSaleScreen when the action is triggered.
  onTapFlashSaleHeader() {
    Get.toNamed(AppRoutes.superFlashSaleScreen);
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  onTapProductItem() {
    Get.toNamed(
      AppRoutes.productDetailScreen,
    );
  }
}
