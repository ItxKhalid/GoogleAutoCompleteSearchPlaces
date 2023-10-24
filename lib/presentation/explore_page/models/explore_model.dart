import '../../../core/app_export.dart';
import 'manworkequipment_item_model.dart';
import 'womantshirticon_item_model.dart';

/// This class defines the variables used in the [explore_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreModel {
  Rx<List<ManworkequipmentItemModel>> manworkequipmentItemList = Rx([
    ManworkequipmentItemModel(
        manWorkEquipment: ImageConstant.imgManWorkEquipment.obs,
        officeBag: "Office Bag".obs),
    ManworkequipmentItemModel(
        manWorkEquipment: ImageConstant.imgArrowLeftPrimary.obs,
        officeBag: "Shirt".obs),
    ManworkequipmentItemModel(
        manWorkEquipment: ImageConstant.imgManTShirtIcon.obs,
        officeBag: "T-Shirt".obs),
    ManworkequipmentItemModel(
        manWorkEquipment: ImageConstant.imgManShoesIcon.obs,
        officeBag: "Shoes".obs),
    ManworkequipmentItemModel(
        manWorkEquipment: ImageConstant.imgManPantsIcon.obs,
        officeBag: "Pants".obs),
    ManworkequipmentItemModel(
        manWorkEquipment: ImageConstant.imgManUnderwearIcon.obs,
        officeBag: "Underwear".obs)
  ]);

  Rx<List<WomantshirticonItemModel>> womantshirticonItemList = Rx([
    WomantshirticonItemModel(
        womanTShirtIcon: ImageConstant.imgWomanTShirtIcon.obs,
        tShirt: "T-Shirt".obs),
    WomantshirticonItemModel(
        womanTShirtIcon: ImageConstant.imgDressIcon.obs, tShirt: "Dress".obs),
    WomantshirticonItemModel(
        womanTShirtIcon: ImageConstant.imgWomanPantsIconPrimary.obs,
        tShirt: "Pants".obs),
    WomantshirticonItemModel(
        womanTShirtIcon: ImageConstant.imgSkirtIcon.obs, tShirt: "Skirt".obs),
    WomantshirticonItemModel(
        womanTShirtIcon: ImageConstant.imgWomanBagIcon.obs, tShirt: "Bag".obs),
    WomantshirticonItemModel(
        womanTShirtIcon: ImageConstant.imgHighHeelsIcon.obs,
        tShirt: "Heels".obs),
    WomantshirticonItemModel(
        womanTShirtIcon: ImageConstant.imgBikiniIcon.obs, tShirt: "Bikini".obs)
  ]);
}
