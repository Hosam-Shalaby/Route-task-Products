import 'package:routetask/domain/entities/product.dart';

sealed class ProductState {}

class LoadingState extends ProductState {
  String massage;
  LoadingState({required this.massage});
}

class ErrorState extends ProductState {
  String? errorMassage;
  ErrorState({this.errorMassage});
}

class SuccsessState extends ProductState {
  List<Product>? Products;
  SuccsessState({this.Products});
}