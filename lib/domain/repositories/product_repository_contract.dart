import 'package:routetask/domain/entities/product.dart';

abstract class ProductRepositoryContract {
  Future<List<Product>?> getProducts();
}
