import 'fortyeight_item_model.dart';
import '../../../core/app_export.dart';
import 'sizes_item_model.dart';
import 'products_item_model.dart';
import 'recomended_item_model.dart';

/// This class defines the variables used in the [product_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailModel {
  Rx<List<FortyeightItemModel>> fortyeightItemList =
      Rx(List.generate(1, (index) => FortyeightItemModel()));

  Rx<List<SizesItemModel>> sizesItemList = Rx([
    SizesItemModel(six: "6".obs),
    SizesItemModel(six: "6.5".obs),
    SizesItemModel(six: "7".obs),
    SizesItemModel(six: "7.5".obs),
    SizesItemModel(six: "8".obs),
    SizesItemModel(six: "8.5".obs)
  ]);

  Rx<List<ProductsItemModel>> productsItemList = Rx([
    ProductsItemModel(productPicture: ImageConstant.imgProductPicture02.obs),
    ProductsItemModel(productPicture: ImageConstant.imgProductPicture03.obs),
    ProductsItemModel(productPicture: ImageConstant.imgProductPicture01.obs)
  ]);

  Rx<List<RecomendedItemModel>> recomendedItemList = Rx([
    RecomendedItemModel(
        image: ImageConstant.imgProductImage.obs,
        fSNikeAirMax: "FS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    RecomendedItemModel(
        image: ImageConstant.imgProductImage109x109.obs,
        fSNikeAirMax: "FS - QUILTED MAXI CROS...".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs),
    RecomendedItemModel(
        image: ImageConstant.imgProductImage1.obs,
        fSNikeAirMax: "FS - Nike Air Max 270 React...".obs,
        price: "299,43".obs,
        oldPrice: "534,33".obs,
        offer: "24% Off".obs)
  ]);
}
