import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '/model/product.dart';

class Purchase extends GetxController{
  var products = <Product>[].obs;
  @override
  void onInit(){
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var serverRespons = [
      Product(1, "Stiker", "image1", "This is a Product that we are going to show by getX", 1000),
      Product(1, "Pencil", "image2", "This is a Product that we are going to show by getX", 3000),
      Product(1, "liptint", "image3", "This is a Product that we are going to show by getX", 27000),
      Product(1, "Demo Product", "image4", "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "image5", "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "image6", "This is a Product that we are going to show by getX", 300.0)

    ];
    products.value = serverRespons;
  }
}