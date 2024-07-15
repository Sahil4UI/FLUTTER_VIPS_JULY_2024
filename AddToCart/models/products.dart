import 'package:uuid/uuid.dart';

class Products {
  String p_id;
  String p_name;
  String p_img;
  double p_price;

  Products(this.p_img, this.p_name, this.p_price) : p_id = Uuid().v4();
}
