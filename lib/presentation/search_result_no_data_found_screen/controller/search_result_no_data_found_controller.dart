import 'package:e_com/core/app_export.dart';
import 'package:e_com/presentation/search_result_no_data_found_screen/models/search_result_no_data_found_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchResultNoDataFoundScreen.
///
/// This class manages the state of the SearchResultNoDataFoundScreen, including the
/// current searchResultNoDataFoundModelObj
class SearchResultNoDataFoundController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchResultNoDataFoundModel> searchResultNoDataFoundModelObj =
      SearchResultNoDataFoundModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
