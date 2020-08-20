import 'package:project_blu_k/models/products/sku_specification.dart';

import 'items.dart';

class ProductData {
	String productId;
	String productName;
	String brand;
	int brandId;
	String linkText;
	String productReference;
	String categoryId;
	String productTitle;
	String metaTagDescription;
	String releaseDate;
	List<String> categories;
	List<String> categoriesIds;
	String link;
	List<String> tamanho;
	List<String> cores;
	List<String> porOcasiO;
	List<String> gender;
	List<String> ageGroup;
	List<String> identifierExists;
	List<String> adult;
	List<String> grupoAtributosGoogleShopping;
	List<String> allSpecifications;
	List<String> allSpecificationsGroups;
	String description;
	List<Items> items;
	List<SkuSpecifications> skuSpecifications;

	ProductData({this.productId, this.productName, this.brand, this.brandId, this.linkText, this.productReference, this.categoryId, this.productTitle, this.metaTagDescription, this.releaseDate, this.categories, this.categoriesIds, this.link, this.tamanho, this.cores, this.porOcasiO, this.gender, this.ageGroup, this.identifierExists, this.adult, this.grupoAtributosGoogleShopping, this.allSpecifications, this.allSpecificationsGroups, this.description, this.items, this.skuSpecifications});

	ProductData.fromJson(Map<String, dynamic> json) {
		productId = json['productId'];
		productName = json['productName'];
		brand = json['brand'];
		brandId = json['brandId'];
		linkText = json['linkText'];
		productReference = json['productReference'];
		categoryId = json['categoryId'];
		productTitle = json['productTitle'];
		metaTagDescription = json['metaTagDescription'];
		releaseDate = json['releaseDate'];
		categories = json['categories'].cast<String>();
		categoriesIds = json['categoriesIds'].cast<String>();
		link = json['link'];
		tamanho = json['Tamanho'].cast<String>();
		cores = json['Cores'].cast<String>();
		porOcasiO = json['Por Ocasião'].cast<String>();
		gender = json['gender'].cast<String>();
		ageGroup = json['age_group'].cast<String>();
		identifierExists = json['identifier_exists'].cast<String>();
		adult = json['adult'].cast<String>();
		grupoAtributosGoogleShopping = json['Grupo - Atributos Google Shopping'].cast<String>();
		allSpecifications = json['allSpecifications'].cast<String>();
		allSpecificationsGroups = json['allSpecificationsGroups'].cast<String>();
		description = json['description'];
		if (json['items'] != null) {
			items = new List<Items>();
			json['items'].forEach((v) { items.add(new Items.fromJson(v)); });
		}
		if (json['skuSpecifications'] != null) {
			skuSpecifications = new List<SkuSpecifications>();
			json['skuSpecifications'].forEach((v) { skuSpecifications.add(new SkuSpecifications.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['productId'] = this.productId;
		data['productName'] = this.productName;
		data['brand'] = this.brand;
		data['brandId'] = this.brandId;
		data['linkText'] = this.linkText;
		data['productReference'] = this.productReference;
		data['categoryId'] = this.categoryId;
		data['productTitle'] = this.productTitle;
		data['metaTagDescription'] = this.metaTagDescription;
		data['releaseDate'] = this.releaseDate;
		data['categories'] = this.categories;
		data['categoriesIds'] = this.categoriesIds;
		data['link'] = this.link;
		data['Tamanho'] = this.tamanho;
		data['Cores'] = this.cores;
		data['Por Ocasião'] = this.porOcasiO;
		data['gender'] = this.gender;
		data['age_group'] = this.ageGroup;
		data['identifier_exists'] = this.identifierExists;
		data['adult'] = this.adult;
		data['Grupo - Atributos Google Shopping'] = this.grupoAtributosGoogleShopping;
		data['allSpecifications'] = this.allSpecifications;
		data['allSpecificationsGroups'] = this.allSpecificationsGroups;
		data['description'] = this.description;
		if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
		if (this.skuSpecifications != null) {
      data['skuSpecifications'] = this.skuSpecifications.map((v) => v.toJson()).toList();
    }
		return data;
	}
}






