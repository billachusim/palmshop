class BrandsModel {
  late String brandName;

  BrandsModel(this.brandName);

  BrandsModel.fromJson(Map<dynamic, dynamic> json) : brandName = json['brandName'] as String;

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'brandName': brandName,
      };
}

class ManufacturerModel {
  late String manufacturerName;

  ManufacturerModel(this.manufacturerName);

  ManufacturerModel.fromJson(Map<dynamic, dynamic> json) : manufacturerName = json['manufacturerName'] as String;

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'manufacturerName': manufacturerName,
      };
}
