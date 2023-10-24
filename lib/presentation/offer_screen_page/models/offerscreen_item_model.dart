import '../../../core/app_export.dart';

/// This class is used in the [offerscreen_item_widget] screen.
class OfferscreenItemModel {
  OfferscreenItemModel({
    this.image,
    this.offer,
    this.hours,
    this.widget,
    this.minutes,
    this.widget1,
    this.secounds,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgPromotionImage);
    offer = offer ?? Rx("Super Flash Sale\n50% Off");
    hours = hours ?? Rx("08");
    widget = widget ?? Rx(":");
    minutes = minutes ?? Rx("34");
    widget1 = widget1 ?? Rx(":");
    secounds = secounds ?? Rx("52");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? offer;

  Rx<String>? hours;

  Rx<String>? widget;

  Rx<String>? minutes;

  Rx<String>? widget1;

  Rx<String>? secounds;

  Rx<String>? id;
}
