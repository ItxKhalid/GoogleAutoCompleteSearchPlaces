import '../../../core/app_export.dart';

/// This class is used in the [msnikeairmax_item_widget] screen.
class MsnikeairmaxItemModel {
  MsnikeairmaxItemModel({
    this.image,
    this.mSNikeAirMax,
    this.price,
    this.oldPrice,
    this.offer,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgProductImage2);
    mSNikeAirMax = mSNikeAirMax ?? Rx("MS - Nike Air Max 270 React...");
    price = price ?? Rx("299,43");
    oldPrice = oldPrice ?? Rx("534,33");
    offer = offer ?? Rx("24% Off");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? mSNikeAirMax;

  Rx<String>? price;

  Rx<String>? oldPrice;

  Rx<String>? offer;

  Rx<String>? id;
}
