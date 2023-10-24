import '../../../core/app_export.dart';

/// This class is used in the [creditcard_item_widget] screen.
class CreditcardItemModel {
  CreditcardItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
