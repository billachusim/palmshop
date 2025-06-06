class AddToCartPurchase {
  late String productName, productCategory, size, color, weight, capacity, type, brandName, productCode, productStock, productUnit, productSalePrice, productPurchasePrice, productDiscount, productWholeSalePrice, productDealerPrice, productManufacturer, productPicture;

  AddToCartPurchase(this.productName, this.productCategory, this.size, this.color, this.weight, this.capacity, this.type, this.brandName, this.productCode, this.productStock, this.productUnit, this.productSalePrice, this.productPurchasePrice, this.productDiscount, this.productWholeSalePrice, this.productDealerPrice, this.productManufacturer, this.productPicture);

  AddToCartPurchase.fromJson(Map<dynamic, dynamic> json)
      : productName = json['productName'] as String,
        productCategory = json['productCategory'].toString(),
        size = json['size'].toString(),
        color = json['color'].toString(),
        weight = json['weight'].toString(),
        capacity = json['capacity'].toString(),
        type = json['type'].toString(),
        brandName = json['brandName'].toString(),
        productCode = json['productCode'].toString(),
        productStock = json['productStock'].toString(),
        productUnit = json['productUnit'].toString(),
        productSalePrice = json['productSalePrice'].toString(),
        productPurchasePrice = json['productPurchasePrice'].toString(),
        productDiscount = json['productDiscount'].toString(),
        productWholeSalePrice = json['productWholeSalePrice'].toString(),
        productDealerPrice = json['productDealerPrice'].toString(),
        productManufacturer = json['productManufacturer'].toString(),
        productPicture = json['productPicture'].toString();

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'productName': productName,
        'productCategory': productCategory,
        'size': size,
        'color': color,
        'weight': weight,
        'capacity': capacity,
        'type': type,
        'brandName': brandName,
        'productCode': productCode,
        'productStock': productStock,
        'productUnit': productUnit,
        'productSalePrice': productSalePrice,
        'productPurchasePrice': productPurchasePrice,
        'productDiscount': productDiscount,
        'productWholeSalePrice': productWholeSalePrice,
        'productDealerPrice': productDealerPrice,
        'productManufacturer': productManufacturer,
        'productPicture': productPicture,
      };
}
