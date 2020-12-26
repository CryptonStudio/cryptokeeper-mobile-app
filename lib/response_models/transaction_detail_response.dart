class TransactionDetailsResponse {
  final String key;
  final String valueInCrypto;
  final String valueInDollars;
  final String value;
  final bool accepted;


  TransactionDetailsResponse(
    this.key,
    this.valueInCrypto,
    this.valueInDollars,
    this.value, this.accepted,
  );
}
