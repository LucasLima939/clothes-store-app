class CommertialOffer {
	double price;
	double listPrice;
	double priceWithoutDiscount;
	double rewardValue;
	String priceValidUntil;
	int availableQuantity;
	double tax;
	String cacheVersionUsedToCallCheckout;

	CommertialOffer({this.price, this.listPrice, this.priceWithoutDiscount, this.rewardValue, this.priceValidUntil, this.availableQuantity, this.tax, this.cacheVersionUsedToCallCheckout,});

	CommertialOffer.fromJson(Map<String, dynamic> json) {
    
		price = json['Price'];
		listPrice = json['ListPrice'];
		priceWithoutDiscount = json['PriceWithoutDiscount'];
		rewardValue = json['RewardValue'];
		priceValidUntil = json['PriceValidUntil'];
		availableQuantity = json['AvailableQuantity'];
		tax = json['Tax'];
		cacheVersionUsedToCallCheckout = json['CacheVersionUsedToCallCheckout'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['Price'] = this.price;
		data['ListPrice'] = this.listPrice;
		data['PriceWithoutDiscount'] = this.priceWithoutDiscount;
		data['RewardValue'] = this.rewardValue;
		data['PriceValidUntil'] = this.priceValidUntil;
		data['AvailableQuantity'] = this.availableQuantity;
		data['Tax'] = this.tax;
		data['CacheVersionUsedToCallCheckout'] = this.cacheVersionUsedToCallCheckout;
		return data;
	}
}





