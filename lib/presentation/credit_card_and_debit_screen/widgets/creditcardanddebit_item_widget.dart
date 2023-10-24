import '../controller/credit_card_and_debit_controller.dart';
import '../models/creditcardanddebit_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreditcardanddebitItemWidget extends StatelessWidget {
  CreditcardanddebitItemWidget(
    this.creditcardanddebitItemModelObj, {
    Key? key,
    this.onTapCreditCardItem,
  }) : super(
          key: key,
        );

  CreditcardanddebitItemModel creditcardanddebitItemModelObj;

  var controller = Get.find<CreditCardAndDebitController>();

  VoidCallback? onTapCreditCardItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCreditCardItem!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 21.h,
          vertical: 24.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVolume,
              height: 22.v,
              width: 36.h,
              margin: EdgeInsets.only(left: 3.h),
            ),
            SizedBox(height: 30.v),
            Obx(
              () => Text(
                creditcardanddebitItemModelObj.debitCardNumber!.value,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: 17.v),
            Row(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Obx(
                      () => Text(
                        creditcardanddebitItemModelObj.cardholder!.value,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer10,
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(left: 37.h),
                    child: Obx(
                      () => Text(
                        creditcardanddebitItemModelObj.cardsave!.value,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.v),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Obx(
                    () => Text(
                      creditcardanddebitItemModelObj.dominicOvo!.value,
                      style: CustomTextStyles.labelMediumOnPrimaryContainer,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 41.h),
                  child: Obx(
                    () => Text(
                      creditcardanddebitItemModelObj.debitCardExpiry!.value,
                      style: CustomTextStyles.labelMediumOnPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
