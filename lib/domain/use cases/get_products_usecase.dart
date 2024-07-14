import 'package:injectable/injectable.dart';
import 'package:routetask/domain/entities/product.dart';
import 'package:routetask/domain/repositories/product_repository_contract.dart';

@injectable
class GetProductsUseCase {
  ProductRepositoryContract productRepositoryContract;
  @factoryMethod
  GetProductsUseCase({required this.productRepositoryContract});

  Future<List<Product>?> invoke() {
    return productRepositoryContract.getProducts();
  }
}
