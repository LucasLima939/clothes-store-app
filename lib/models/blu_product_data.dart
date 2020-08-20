class ProductData {
  int id;
  String name;
  int departmentId;
  int categoryId;
  int brandId;
  String linkId;
  String refId;
  bool isVisible;
  String description;
  String descriptionShort;
  String releaseDate;
  String keyWords;
  String title;
  bool isActive;
  String taxCode;
  String metaTagDescription;
  int supplierId;
  bool showWithoutStock;
  String adWordsRemarketingCode;
  String lomadeeCampaignCode;

  ProductData(
      {this.id,
      this.name,
      this.departmentId,
      this.categoryId,
      this.brandId,
      this.linkId,
      this.refId,
      this.isVisible,
      this.description,
      this.descriptionShort,
      this.releaseDate,
      this.keyWords,
      this.title,
      this.isActive,
      this.taxCode,
      this.metaTagDescription,
      this.supplierId,
      this.showWithoutStock,
      this.adWordsRemarketingCode,
      this.lomadeeCampaignCode,});

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    departmentId = json['DepartmentId'];
    categoryId = json['CategoryId'];
    brandId = json['BrandId'];
    linkId = json['LinkId'];
    refId = json['RefId'];
    isVisible = json['IsVisible'];
    description = json['Description'];
    descriptionShort = json['DescriptionShort'];
    releaseDate = json['ReleaseDate'];
    keyWords = json['KeyWords'];
    title = json['Title'];
    isActive = json['IsActive'];
    taxCode = json['TaxCode'];
    metaTagDescription = json['MetaTagDescription'];
    supplierId = json['SupplierId'];
    showWithoutStock = json['ShowWithoutStock'];
    adWordsRemarketingCode = json['AdWordsRemarketingCode'];
    lomadeeCampaignCode = json['LomadeeCampaignCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['DepartmentId'] = this.departmentId;
    data['CategoryId'] = this.categoryId;
    data['BrandId'] = this.brandId;
    data['LinkId'] = this.linkId;
    data['RefId'] = this.refId;
    data['IsVisible'] = this.isVisible;
    data['Description'] = this.description;
    data['DescriptionShort'] = this.descriptionShort;
    data['ReleaseDate'] = this.releaseDate;
    data['KeyWords'] = this.keyWords;
    data['Title'] = this.title;
    data['IsActive'] = this.isActive;
    data['TaxCode'] = this.taxCode;
    data['MetaTagDescription'] = this.metaTagDescription;
    data['SupplierId'] = this.supplierId;
    data['ShowWithoutStock'] = this.showWithoutStock;
    data['AdWordsRemarketingCode'] = this.adWordsRemarketingCode;
    data['LomadeeCampaignCode'] = this.lomadeeCampaignCode;
    return data;
  }
}
