import 'package:e_com/core/app_export.dart';
import 'package:e_com/presentation/list_category_screen/models/list_category_model.dart';

/// A controller class for the ListCategoryScreen.
///
/// This class manages the state of the ListCategoryScreen, including the
/// current listCategoryModelObj
class ListCategoryController extends GetxController {
  Rx<ListCategoryModel> listCategoryModelObj = ListCategoryModel().obs;
}
