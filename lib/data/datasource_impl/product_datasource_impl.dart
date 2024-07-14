import 'package:injectable/injectable.dart';
import 'package:routetask/data/datasource_contract/product_datasource_contract.dart';
import 'package:routetask/data/network/api_manager/api_manager.dart';
import 'package:routetask/domain/entities/product.dart';

@Injectable(as: ProductDatasourceContract)
class ProductDatasourceImpl extends ProductDatasourceContract {
  ApiManager apiManager;
  @factoryMethod
  ProductDatasourceImpl({required this.apiManager});
  @override
  Future<List<Product>?> getProducts() async {
    var response = await apiManager.getProducts();
    
    return response.products?.map((e) => e.toProduct()).toList();

  }
}
