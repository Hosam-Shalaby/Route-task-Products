import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:routetask/domain/entities/product.dart';
import 'package:routetask/config/number_formatter.dart';

class ProductWidget extends StatelessWidget {
  Product product;
  ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        margin: const EdgeInsets.all(5),
        // margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color.fromARGB(255, 166, 196, 221),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Stack(
            children: [
              Wrap(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            height: 80,
                            child: CachedNetworkImage(
                                imageUrl: product.images?[0] ?? '',
                                fit: BoxFit.fitWidth,
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator()),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      product.title ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      product.description ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "EGP ${formatNumber(product.discountPercentage ?? product.price!)}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                        const SizedBox(width: 16),
                        Visibility(
                          visible: product.discountPercentage != null,
                          child: Text(
                            "${formatNumber(product.price!)} EGP",
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.w300,
                                fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Review (${formatNumber(product.rating!)})",
                          style: const TextStyle(fontSize: 11),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ]),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: const Color.fromARGB(255, 178, 203, 224))),
                  child: const Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.blue,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 36, 9, 174)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
