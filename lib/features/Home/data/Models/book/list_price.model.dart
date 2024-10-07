import 'package:equatable/equatable.dart';

class ListPrice extends Equatable {
  final String amount;
  final String currencyCode;

  const ListPrice({required this.amount, required this.currencyCode});

  factory ListPrice.fromJson(Map<String, dynamic> json) => ListPrice(
        amount: (json['amount'] as num?).toString(),
        currencyCode: json['currencyCode'] as String,
      );

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'currencyCode': currencyCode,
      };

  @override
  List<Object?> get props => [amount, currencyCode];
}
