import 'package:routetask/domain/entities/product.dart';

abstract class ProductDatasourceContract {
  Future<List<Product>?> getProducts();
}
