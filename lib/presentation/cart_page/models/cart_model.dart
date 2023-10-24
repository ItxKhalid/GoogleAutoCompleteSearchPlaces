import '../../../core/app_export.dart';
import 'cartlist_item_model.dart';

/// This class defines the variables used in the [cart_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {
  Rx<List<CartlistItemModel>> cartlistItemList = Rx([
    CartlistItemModel(
        nikeAirZoomPegasus: "Nike Air Zoom Pegasus 36 Miami".obs,
        price: "299,43".obs,
        one: "1".obs),
    CartlistItemModel(
        nikeAirZoomPegasus: "Nike Air Zoom Pegasus 36 Miami".obs,
        price: "299,43".obs,
        one: "1".obs)
  ]);
}
