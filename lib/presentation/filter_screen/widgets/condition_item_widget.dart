import '../models/condition_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ConditionItemWidget extends StatelessWidget {
  ConditionItemWidget(
    this.conditionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ConditionItemModel conditionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.all(16.h),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          conditionItemModelObj.newVar.value,
          style: TextStyle(
            color: conditionItemModelObj.isSelected.value
                ? appTheme.blueGray300
                : theme.colorScheme.primary.withOpacity(1),
            fontSize: 12.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: conditionItemModelObj.isSelected.value,
        backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
        selectedColor: Colors.transparent,
        shape: conditionItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blue50,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
        onSelected: (value) {
          conditionItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
