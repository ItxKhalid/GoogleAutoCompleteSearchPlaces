import '../../../core/app_export.dart';

/// This class is used in the [manworkequipment_item_widget] screen.
class ManworkequipmentItemModel {
  ManworkequipmentItemModel({
    this.manWorkEquipment,
    this.officeBag,
    this.id,
  }) {
    manWorkEquipment =
        manWorkEquipment ?? Rx(ImageConstant.imgManWorkEquipment);
    officeBag = officeBag ?? Rx("Office Bag");
    id = id ?? Rx("");
  }

  Rx<String>? manWorkEquipment;

  Rx<String>? officeBag;

  Rx<String>? id;
}
