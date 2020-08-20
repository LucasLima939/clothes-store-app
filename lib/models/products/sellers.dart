

import 'commertial_offer.dart';

class Sellers {
	String sellerId;
	String sellerName;
	String addToCartLink;
	bool sellerDefault;
	CommertialOffer commertialOffer;

	Sellers({this.sellerId, this.sellerName, this.addToCartLink, this.sellerDefault, this.commertialOffer});

	Sellers.fromJson(Map<String, dynamic> json) {
		sellerId = json['sellerId'];
		sellerName = json['sellerName'];
		addToCartLink = json['addToCartLink'];
		sellerDefault = json['sellerDefault'];
		commertialOffer = json['commertialOffer'] != null ? new CommertialOffer.fromJson(json['commertialOffer']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sellerId'] = this.sellerId;
		data['sellerName'] = this.sellerName;
		data['addToCartLink'] = this.addToCartLink;
		data['sellerDefault'] = this.sellerDefault;
		if (this.commertialOffer != null) {
      data['commertialOffer'] = this.commertialOffer.toJson();
    }
		return data;
	}
}