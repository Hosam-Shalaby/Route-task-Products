// import 'dart:convert';

// class Product {
//   int? id;
//   String? title;
//   String? description;
//   String? category;
//   double? price;
//   double? discountPercentage;
//   double? rating;
//   int? stock;
//   List<String>? tags;
//   String? brand;
//   String? sku;
//   int? weight;
//   // Dimensions? dimensions;
//   String? warrantyInformation;
//   String? shippingInformation;
//   String? availabilityStatus;
//   // List<Review>? reviews;
//   String? returnPolicy;
//   int? minimumOrderQuantity;
//   // Meta? meta;
//   String? thumbnail;
//   // String? images;
//   List<String>? images;

//   Product({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.category,
//     required this.price,
//     required this.discountPercentage,
//     required this.rating,
//     required this.stock,
//     required this.tags,
//     required this.brand,
//     required this.sku,
//     required this.weight,
//     // required this.dimensions,
//     required this.warrantyInformation,
//     required this.shippingInformation,
//     required this.availabilityStatus,
//     // required this.reviews,
//     required this.returnPolicy,
//     required this.minimumOrderQuantity,
//     // required this.meta,
//     required this.thumbnail,
//     required this.images,
//   });

//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       id: json['id'],
//       title: json['title'],
//       description: json['description'],
//       category: json['category'],
//       price: json['price'].toDouble(),
//       discountPercentage: json['discountPercentage'].toDouble(),
//       rating: json['rating'].toDouble(),
//       stock: json['stock'],
//       tags: List<String>.from(json['tags']),
//       brand: json['brand'],
//       sku: json['sku'],
//       weight: json['weight'].toDouble(),
//       // dimensions: Dimensions.fromJson(json['dimensions']),
//       warrantyInformation: json['warrantyInformation'],
//       shippingInformation: json['shippingInformation'],
//       availabilityStatus: json['availabilityStatus'],
//       // reviews: List<Review>.from(
//       //   json['reviews'].map((review) => Review.fromJson(review)),
//       // ),
//       returnPolicy: json['returnPolicy'],
//       minimumOrderQuantity: json['minimumOrderQuantity'],
//       // meta: Meta.fromJson(json['meta']),
//       thumbnail: json['thumbnail'],
//       // images: json['images'],
//       images: List<String>.from(json['images']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'title': title,
//       'description': description,
//       'category': category,
//       'price': price,
//       'discountPercentage': discountPercentage,
//       'rating': rating,
//       'stock': stock,
//       'tags': tags,
//       'brand': brand,
//       'sku': sku,
//       'weight': weight,
//       // 'dimensions': dimensions?.toJson(),
//       'warrantyInformation': warrantyInformation,
//       'shippingInformation': shippingInformation,
//       'availabilityStatus': availabilityStatus,
//       // 'reviews': reviews?.map((review) => review.toJson()).toList(),
//       'returnPolicy': returnPolicy,
//       'minimumOrderQuantity': minimumOrderQuantity,
//       // 'meta': meta?.toJson(),
//       'thumbnail': thumbnail,
//       'images': images,
//     };
//   }
// }

// class Dimensions {
//   double width;
//   double height;
//   double depth;

//   Dimensions({
//     required this.width,
//     required this.height,
//     required this.depth,
//   });

//   factory Dimensions.fromJson(Map<String, dynamic> json) {
//     return Dimensions(
//       width: json['width'].toDouble(),
//       height: json['height'].toDouble(),
//       depth: json['depth'].toDouble(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'width': width,
//       'height': height,
//       'depth': depth,
//     };
//   }
// }

// class Review {
//   int rating;
//   String comment;
//   DateTime date;
//   String reviewerName;
//   String reviewerEmail;

//   Review({
//     required this.rating,
//     required this.comment,
//     required this.date,
//     required this.reviewerName,
//     required this.reviewerEmail,
//   });

//   factory Review.fromJson(Map<String, dynamic> json) {
//     return Review(
//       rating: json['rating'],
//       comment: json['comment'],
//       date: DateTime.parse(json['date']),
//       reviewerName: json['reviewerName'],
//       reviewerEmail: json['reviewerEmail'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'rating': rating,
//       'comment': comment,
//       'date': date.toIso8601String(),
//       'reviewerName': reviewerName,
//       'reviewerEmail': reviewerEmail,
//     };
//   }
// }

// class Meta {
//   DateTime createdAt;
//   DateTime updatedAt;
//   String barcode;
//   String qrCode;

//   Meta({
//     required this.createdAt,
//     required this.updatedAt,
//     required this.barcode,
//     required this.qrCode,
//   });

//   factory Meta.fromJson(Map<String, dynamic> json) {
//     return Meta(
//       createdAt: DateTime.parse(json['createdAt']),
//       updatedAt: DateTime.parse(json['updatedAt']),
//       barcode: json['barcode'],
//       qrCode: json['qrCode'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'createdAt': createdAt.toIso8601String(),
//       'updatedAt': updatedAt.toIso8601String(),
//       'barcode': barcode,
//       'qrCode': qrCode,
//     };
//   }
// }

class Product {
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  // List<Review> reviews;
  List<String>? images;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    // required this.reviews,
    required this.images,
  });

  // factory Product.fromJson(Map<String, dynamic> json) {
  //   return Product(
  //     id: json['id'],
  //     title: json['title'],
  //     description: json['description'],
  //     category: json['category'],
  //     price: (json['price'] as num).toDouble(),
  //     discountPercentage: (json['discountPercentage'] as num).toDouble(),
  //     rating: (json['rating'] as num).toDouble(),
  //     // reviews: List<Review>.from(
  //     //   json['reviews'].map((review) => Review.fromJson(review)),
  //     // ),
  //     images: List<String>.from(json['images']),
  //   );
  // }
factory Product.fromJson(Map<String, dynamic> json) {
  return Product(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    category: json['category'],
    price: (json['price'] as num).toDouble(),
    discountPercentage: (json['discountPercentage'] as num).toDouble(),
    rating: (json['rating'] as num).toDouble(),
    images: json['images'] != null ? List<String>.from(json['images']) : null,
  );
}

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      // 'reviews': reviews.map((review) => review.toJson()).toList(),
      'images': images,
    };
  }
}

// class Review {
//   int rating;
//   String comment;
//   DateTime date;
//   String reviewerName;
//   String reviewerEmail;

//   Review({
//     required this.rating,
//     required this.comment,
//     required this.date,
//     required this.reviewerName,
//     required this.reviewerEmail,
//   });

//   factory Review.fromJson(Map<String, dynamic> json) {
//     return Review(
//       rating: json['rating'],
//       comment: json['comment'],
//       date: DateTime.parse(json['date']),
//       reviewerName: json['reviewerName'],
//       reviewerEmail: json['reviewerEmail'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'rating': rating,
//       'comment': comment,
//       'date': date.toIso8601String(),
//       'reviewerName': reviewerName,
//       'reviewerEmail': reviewerEmail,
//     };
//   }
// }
