import '../../../core/app_export.dart';

/// This class is used in the [notificationfeed_item_widget] screen.
class NotificationfeedItemModel {
  NotificationfeedItemModel({
    this.newProduct,
    this.newProduct1,
    this.nikeAirZoomPegasus,
    this.time,
    this.id,
  }) {
    newProduct = newProduct ?? Rx(ImageConstant.imgProductImage);
    newProduct1 = newProduct1 ?? Rx("New Product");
    nikeAirZoomPegasus = nikeAirZoomPegasus ??
        Rx("Nike Air Zoom Pegasus 36 Miami - Special For your Activity");
    time = time ?? Rx("June 3, 2015 5:06 PM");
    id = id ?? Rx("");
  }

  Rx<String>? newProduct;

  Rx<String>? newProduct1;

  Rx<String>? nikeAirZoomPegasus;

  Rx<String>? time;

  Rx<String>? id;
}
