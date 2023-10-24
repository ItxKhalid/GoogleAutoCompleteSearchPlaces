import '../../../core/app_export.dart';

/// This class is used in the [sizes_item_widget] screen.
class SizesItemModel {
  SizesItemModel({
    this.six,
    this.id,
  }) {
    six = six ?? Rx("6");
    id = id ?? Rx("");
  }

  Rx<String>? six;

  Rx<String>? id;
}
