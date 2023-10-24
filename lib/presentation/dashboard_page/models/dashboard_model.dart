import 'slider_item_model.dart';
import '../../../core/app_export.dart';
import 'categories_item_model.dart';
import 'fsnikeairmax_item_model.dart';
import 'msnikeairmax_item_model.dart';
import 'dashboard_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel {
  Rx<List<SliderItemModel>> sliderItemList =
      Rx(List.generate(1, (index) => SliderItemModel()));

  Rx<List<CategoriesItemModel>> categoriesItemList = Rx([
    CategoriesItemModel(
        arrowLeft: ImageConstant.imgArrowLeftPrimary.obs,
        manShirt: "Man Shirt".obs),
    CategoriesItemModel(
        arrowLeft: ImageConstant.imgManWorkEquipment.obs,
        manShirt: "Office Bag".obs),
    CategoriesItemModel(
        arrowLeft: ImageConstant.imgDressIcon.obs, manShirt: "Dress".obs),
    CategoriesItemModel(
        arrowLeft: ImageConstant.imgWomanBagIcon.obs,
        manShirt: "Woman Bag".obs),
    CategoriesItemModel(
        arrowLeft: ImageConstant.imgManShoesIcon.obs, manShirt: "Man Shoes".obs)
  ]);

  Rx<List<FsnikeairmaxItemModel>> fsnikeairmaxItemList = Rx([
    FsnikeairmaxItemModel(
        image: ImageConstant.imgProductImage.obs,
        fSNikeAirMax: "FS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    FsnikeairmaxItemModel(
        image: ImageConstant.imgProductImage109x109.obs,
        fSNikeAirMax: "FS - QUILTED MAXI CROS...".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    FsnikeairmaxItemModel(
        image: ImageConstant.imgProductImage1.obs,
        fSNikeAirMax: "FS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs)
  ]);

  Rx<List<MsnikeairmaxItemModel>> msnikeairmaxItemList = Rx([
    MsnikeairmaxItemModel(
        image: ImageConstant.imgProductImage2.obs,
        mSNikeAirMax: "MS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    MsnikeairmaxItemModel(
        image: ImageConstant.imgProductImage3.obs,
        mSNikeAirMax: "MS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    MsnikeairmaxItemModel(
        image: ImageConstant.imgProductImage4.obs,
        mSNikeAirMax: "MS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs)
  ]);

  Rx<List<DashboardItemModel>> dashboardItemList = Rx([
    DashboardItemModel(
        image: ImageConstant.imgImageProduct.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    DashboardItemModel(
        image: ImageConstant.imgProductImage2.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    DashboardItemModel(
        image: ImageConstant.imgProductImage133x133.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    DashboardItemModel(
        image: ImageConstant.imgProductImage1.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs)
  ]);
}
