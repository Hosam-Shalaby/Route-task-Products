import 'package:injectable/injectable.dart';
import 'package:routetask/data/datasource_contract/product_datasource_contract.dart';
import 'package:routetask/domain/entities/product.dart';
import 'package:routetask/domain/repositories/product_repository_contract.dart';

@Injectable(as: ProductRepositoryContract)
class ProductRepositoryImpl extends ProductRepositoryContract {
  ProductDatasourceContract productDatasourceContract;
  @factoryMethod
  ProductRepositoryImpl({required this.productDatasourceContract});
  @override
  Future<List<Product>?> getProducts() {
    return productDatasourceContract.getProducts();
  }
}
