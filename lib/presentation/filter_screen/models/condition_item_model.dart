import '../../../core/app_export.dart';

/// This class is used in the [condition_item_widget] screen.
class ConditionItemModel {
  Rx<String> newVar = Rx("New");

  Rx<bool> isSelected = Rx(false);
}
