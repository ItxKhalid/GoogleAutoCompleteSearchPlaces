import '../../../core/app_export.dart';

/// This class is used in the [searchresult_item_widget] screen.
class SearchresultItemModel {
  SearchresultItemModel({
    this.image,
    this.nikeAirMaxReact,
    this.price,
    this.oldPrice,
    this.offer,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgProductImage1);
    nikeAirMaxReact = nikeAirMaxReact ?? Rx("Nike Air Max 270 React ENG");
    price = price ?? Rx("299,43");
    oldPrice = oldPrice ?? Rx("534,33");
    offer = offer ?? Rx("24% Off");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? nikeAirMaxReact;

  Rx<String>? price;

  Rx<String>? oldPrice;

  Rx<String>? offer;

  Rx<String>? id;
}
