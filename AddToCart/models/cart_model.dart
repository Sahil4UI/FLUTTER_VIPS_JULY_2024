class CartModel {
  String id;
  String productName;
  String productAmount;
  int productQty;

  CartModel({
    required this.id,
    required this.productName,
    required this.productAmount,
    this.productQty = 1,
  });
}
