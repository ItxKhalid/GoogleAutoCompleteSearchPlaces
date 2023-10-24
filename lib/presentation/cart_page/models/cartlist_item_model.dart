import '../../../core/app_export.dart';

/// This class is used in the [cartlist_item_widget] screen.
class CartlistItemModel {
  CartlistItemModel({
    this.nikeAirZoomPegasus,
    this.price,
    this.one,
    this.id,
  }) {
    nikeAirZoomPegasus =
        nikeAirZoomPegasus ?? Rx("Nike Air Zoom Pegasus 36 Miami");
    price = price ?? Rx("299,43");
    one = one ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? nikeAirZoomPegasus;

  Rx<String>? price;

  Rx<String>? one;

  Rx<String>? id;
}
