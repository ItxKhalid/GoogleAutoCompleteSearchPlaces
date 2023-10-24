import '../../../core/app_export.dart';

/// This class is used in the [categories_item_widget] screen.
class CategoriesItemModel {
  CategoriesItemModel({
    this.arrowLeft,
    this.manShirt,
    this.id,
  }) {
    arrowLeft = arrowLeft ?? Rx(ImageConstant.imgArrowLeftPrimary);
    manShirt = manShirt ?? Rx("Man Shirt");
    id = id ?? Rx("");
  }

  Rx<String>? arrowLeft;

  Rx<String>? manShirt;

  Rx<String>? id;
}
