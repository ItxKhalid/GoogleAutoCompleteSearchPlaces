import '../controller/product_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductDetailScreen.
///
/// This class ensures that the ProductDetailController is created when the
/// ProductDetailScreen is first loaded.
class ProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailController());
  }
}
