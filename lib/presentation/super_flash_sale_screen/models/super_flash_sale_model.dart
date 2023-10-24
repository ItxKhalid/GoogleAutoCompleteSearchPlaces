import '../../../core/app_export.dart';
import 'superflashsale_item_model.dart';

/// This class defines the variables used in the [super_flash_sale_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SuperFlashSaleModel {
  Rx<List<SuperflashsaleItemModel>> superflashsaleItemList = Rx([
    SuperflashsaleItemModel(
        image: ImageConstant.imgProductImage3.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    SuperflashsaleItemModel(
        image: ImageConstant.imgProductImage2.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    SuperflashsaleItemModel(
        image: ImageConstant.imgProductImage133x133.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    SuperflashsaleItemModel(
        image: ImageConstant.imgImageProduct.obs,
        nikeAirMaxReact: "Nike Air Max 270 React ENG".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs)
  ]);
}
