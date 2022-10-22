import 'dart:convert';

Productget productgetFromJson(String str) =>
    Productget.fromJson(jsonDecode(str));

class Productget {
  Result? result;

  Productget({this.result});

  Productget.fromJson(Map<String, dynamic> json) {
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  get image128 => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  int? status;
  List<Response>? response;

  Result({this.status, this.response});

  Result.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['response'] != null) {
      response = <Response>[];
      json['response'].forEach((v) {
        response!.add(new Response.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.response != null) {
      data['response'] = this.response!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Response {
  int? id;
  String? name;
  String? image128;
  String? image256;
  String? image512;
  String? image1024;
  String? type;
  int? categId;
  String? categName;
  String? defaultCode;
  bool? barcode;
  int? listPrice;
  int? standardPrice;
  String? companyId;
  bool? description;
  List<Variants>? variants;
  bool? descriptionSale;
  List<int>? publicCategIds;
  List<dynamic>? publicCategNames;
  String? alternativeProductIds;
  String? accessoryProductIds;
  bool? drBrandId;
  bool? drLabelId;
  bool? drBrandName;
  bool? drLabelName;
  List<ProductTemplateImageIds>? productTemplateImageIds;
  bool? descriptionPickingout;
  bool? descriptionPickingin;
  int? responsibleId;
  String? responsibleName;

  Response(
      {this.id,
      this.name,
      this.image128,
      this.image256,
      this.image512,
      this.image1024,
      this.type,
      this.categId,
      this.categName,
      this.defaultCode,
      this.barcode,
      this.listPrice,
      this.standardPrice,
      this.companyId,
      this.description,
      this.variants,
      this.descriptionSale,
      this.publicCategIds,
      this.publicCategNames,
      this.alternativeProductIds,
      this.accessoryProductIds,
      this.drBrandId,
      this.drLabelId,
      this.drBrandName,
      this.drLabelName,
      this.productTemplateImageIds,
      this.descriptionPickingout,
      this.descriptionPickingin,
      this.responsibleId,
      this.responsibleName});

  Response.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image128 = json['image_128'];
    image256 = json['image_256'];
    image512 = json['image_512'];
    image1024 = json['image_1024'];
    type = json['type'];
    categId = json['categ_id'];
    categName = json['categ_name'];
    defaultCode = json['default_code'];
    barcode = json['barcode'];
    listPrice = json['list_price'];
    standardPrice = json['standard_price'];
    companyId = json['company_id'];
    description = json['description'];
    if (json['variants'] != null) {
      variants = <Variants>[];
      json['variants'].forEach((v) {
        variants!.add(new Variants.fromJson(v));
      });
    }
    descriptionSale = json['description_sale'];
    publicCategIds = json['public_categ_ids'].cast<int>();
    publicCategNames = json['public_categ_names'].cast<String>();
    alternativeProductIds = json['alternative_product_ids'];
    accessoryProductIds = json['accessory_product_ids'];
    drBrandId = json['dr_brand_id'];
    drLabelId = json['dr_label_id'];
    drBrandName = json['dr_brand_name'];
    drLabelName = json['dr_label_name'];
    if (json['product_template_image_ids'] != null) {
      productTemplateImageIds = <ProductTemplateImageIds>[];
      json['product_template_image_ids'].forEach((v) {
        productTemplateImageIds!.add(new ProductTemplateImageIds.fromJson(v));
      });
    }
    descriptionPickingout = json['description_pickingout'];
    descriptionPickingin = json['description_pickingin'];
    responsibleId = json['responsible_id'];
    responsibleName = json['responsible_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image_128'] = this.image128;
    data['image_256'] = this.image256;
    data['image_512'] = this.image512;
    data['image_1024'] = this.image1024;
    data['type'] = this.type;
    data['categ_id'] = this.categId;
    data['categ_name'] = this.categName;
    data['default_code'] = this.defaultCode;
    data['barcode'] = this.barcode;
    data['list_price'] = this.listPrice;
    data['standard_price'] = this.standardPrice;
    data['company_id'] = this.companyId;
    data['description'] = this.description;
    if (this.variants != null) {
      data['variants'] = this.variants!.map((v) => v.toJson()).toList();
    }
    data['description_sale'] = this.descriptionSale;
    data['public_categ_ids'] = this.publicCategIds;
    data['public_categ_names'] = this.publicCategNames;
    data['alternative_product_ids'] = this.alternativeProductIds;
    data['accessory_product_ids'] = this.accessoryProductIds;
    data['dr_brand_id'] = this.drBrandId;
    data['dr_label_id'] = this.drLabelId;
    data['dr_brand_name'] = this.drBrandName;
    data['dr_label_name'] = this.drLabelName;
    if (this.productTemplateImageIds != null) {
      data['product_template_image_ids'] =
          this.productTemplateImageIds!.map((v) => v.toJson()).toList();
    }
    data['description_pickingout'] = this.descriptionPickingout;
    data['description_pickingin'] = this.descriptionPickingin;
    data['responsible_id'] = this.responsibleId;
    data['responsible_name'] = this.responsibleName;
    return data;
  }
}

class Variants {
  String? attribute;
  List<String>? values;

  Variants({this.attribute, this.values});

  Variants.fromJson(Map<String, dynamic> json) {
    attribute = json['attribute'];
    values = json['values'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['attribute'] = this.attribute;
    data['values'] = this.values;
    return data;
  }
}

class ProductTemplateImageIds {
  String? image1024;
  String? image512;
  String? image256;
  String? image128;

  ProductTemplateImageIds(
      {this.image1024, this.image512, this.image256, this.image128});

  ProductTemplateImageIds.fromJson(Map<String, dynamic> json) {
    image1024 = json['image_1024'];
    image512 = json['image_512'];
    image256 = json['image_256'];
    image128 = json['image_128'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_1024'] = this.image1024;
    data['image_512'] = this.image512;
    data['image_256'] = this.image256;
    data['image_128'] = this.image128;
    return data;
  }
}
