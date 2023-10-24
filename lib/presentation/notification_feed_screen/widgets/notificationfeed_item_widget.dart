import '../controller/notification_feed_controller.dart';
import '../models/notificationfeed_item_model.dart';
import 'package:e_com/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationfeedItemWidget extends StatelessWidget {
  NotificationfeedItemWidget(
    this.notificationfeedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationfeedItemModel notificationfeedItemModelObj;

  var controller = Get.find<NotificationFeedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: notificationfeedItemModelObj.newProduct!.value,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
              margin: EdgeInsets.only(bottom: 40.v),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      notificationfeedItemModelObj.newProduct1!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  SizedBox(
                    width: 269.h,
                    child: Obx(
                      () => Text(
                        notificationfeedItemModelObj.nikeAirZoomPegasus!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.80,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Obx(
                    () => Text(
                      notificationfeedItemModelObj.time!.value,
                      style: CustomTextStyles.bodySmallOnPrimary10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
