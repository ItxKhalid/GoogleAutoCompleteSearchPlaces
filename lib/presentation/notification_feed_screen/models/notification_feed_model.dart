import '../../../core/app_export.dart';
import 'notificationfeed_item_model.dart';

/// This class defines the variables used in the [notification_feed_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationFeedModel {
  Rx<List<NotificationfeedItemModel>> notificationfeedItemList = Rx([
    NotificationfeedItemModel(
        newProduct: ImageConstant.imgProductImage.obs,
        newProduct1: "New Product".obs,
        nikeAirZoomPegasus:
            "Nike Air Zoom Pegasus 36 Miami - Special For your Activity".obs,
        time: "June 3, 2015 5:06 PM".obs),
    NotificationfeedItemModel(
        newProduct: ImageConstant.imgImageProduct.obs,
        newProduct1: "Best Product".obs,
        nikeAirZoomPegasus:
            "Nike Air Zoom Pegasus 36 Miami - Special For your Activity".obs,
        time: "June 3, 2015 5:06 PM".obs),
    NotificationfeedItemModel(
        newProduct: ImageConstant.imgProductImage1.obs,
        newProduct1: "New Product".obs,
        nikeAirZoomPegasus:
            "Nike Air Zoom Pegasus 36 Miami - Special For your Activity".obs,
        time: "June 3, 2015 5:06 PM".obs)
  ]);
}
