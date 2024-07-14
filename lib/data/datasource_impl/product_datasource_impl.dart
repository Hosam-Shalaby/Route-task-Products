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
    // return response.products
    // ?.map((ProductDto) => Product(
    //     id: ProductDto.id,
    //     title: ProductDto.title,
    //     description: ProductDto.description,
    //     category: ProductDto.category,
    //     price: ProductDto.price,
    //     discountPercentage: ProductDto.discountPercentage,
    //     rating: ProductDto.rating,
    //     stock: ProductDto.stock,
    //     tags: ProductDto.tags,
    //     brand: ProductDto.brand,
    //     sku: ProductDto.sku,
    //     weight: ProductDto.weight,
    //     warrantyInformation: ProductDto.warrantyInformation,
    //     shippingInformation: ProductDto.shippingInformation,
    //     availabilityStatus: ProductDto.availabilityStatus,
    //     // reviews: ProductDto.reviews,
    //     returnPolicy: ProductDto.returnPolicy,
    //     minimumOrderQuantity: ProductDto.minimumOrderQuantity,
    //     // meta: ProductDto.meta,
    //     thumbnail: ProductDto.thumbnail,
    //     images: ProductDto.images, dimensions: ProductDto.dimensions))
    // .toList();
    // return response.products
    //     ?.map((ProductDto) => Product(
    //         id: ProductDto.id,
    //         title: ProductDto.title,
    //         description: ProductDto.description,
    //         category: ProductDto.category,
    //         price: ProductDto.price,
    //         discountPercentage: ProductDto.discountPercentage,
    //         rating: ProductDto.rating,
    //         reviews: ProductDto.reviews,
    //         images: ProductDto.images))
    //     .toList();
    return response.products?.map((e) => e.toProduct()).toList();
    // ?.map((ProductDto) => Product(
    //     id: ProductDto.id,
    //     title: ProductDto.title,
    //     description: ProductDto.description,
    //     category: ProductDto.category,
    //     price: ProductDto.price,
    //     discountPercentage: ProductDto.discountPercentage,
    //     rating: ProductDto.rating,
    //     images: ProductDto.images))
    // .toList();
  }
}
