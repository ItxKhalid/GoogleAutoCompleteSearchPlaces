import '../../../core/app_export.dart';
import 'creditcardanddebit_item_model.dart';

/// This class defines the variables used in the [credit_card_and_debit_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreditCardAndDebitModel {
  Rx<List<CreditcardanddebitItemModel>> creditcardanddebitItemList = Rx([
    CreditcardanddebitItemModel(
        debitCardNumber: "6326    9124    8124    9875".obs,
        cardholder: "CARD HOLDER".obs,
        cardsave: "CARD SAVE".obs,
        dominicOvo: "Dominic Ovo".obs,
        debitCardExpiry: "06/24".obs),
    CreditcardanddebitItemModel(
        debitCardNumber: "6326    9124    8124    9875".obs,
        cardholder: "CARD HOLDER".obs,
        cardsave: "CARD SAVE".obs,
        dominicOvo: "Dominic Ovo".obs,
        debitCardExpiry: "06/24".obs)
  ]);
}
