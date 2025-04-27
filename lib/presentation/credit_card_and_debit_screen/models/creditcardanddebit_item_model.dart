import '../../../core/app_export.dart';

/// This class is used in the [creditcardanddebit_item_widget] screen.
class CreditcardanddebitItemModel {
  CreditcardanddebitItemModel({
    this.debitCardNumber,
    this.cardholder,
    this.cardsave,
    this.dominicOvo,
    this.debitCardExpiry,
    this.id,
  }) {
    debitCardNumber = debitCardNumber ?? Rx("6326    9124    8124    9875");
    cardholder = cardholder ?? Rx("CARD HOLDER");
    cardsave = cardsave ?? Rx("CARD SAVE");
    dominicOvo = dominicOvo ?? Rx("Dominic Ovo");
    debitCardExpiry = debitCardExpiry ?? Rx("06/24");
    id = id ?? Rx("");
  }

  Rx<String>? debitCardNumber;

  Rx<String>? cardholder;

  Rx<String>? cardsave;

  Rx<String>? dominicOvo;

  Rx<String>? debitCardExpiry;

  Rx<String>? id;
}
