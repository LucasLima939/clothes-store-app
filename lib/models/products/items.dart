
import 'package:project_blu_k/models/products/images.dart';
import 'package:project_blu_k/models/products/reference_id.dart';
import 'package:project_blu_k/models/products/sellers.dart';

class Items {
	String itemId;
	String name;
	String nameComplete;
	String complementName;
	String ean;
	List<ReferenceId> referenceId;
	String measurementUnit;
	double unitMultiplier;
	dynamic modalType;
	bool isKit;
	List<Images> images;
	List<String> tamanho;
	List<String> variations;
	List<Sellers> sellers;
	dynamic estimatedDateArrival;

	Items({this.itemId, this.name, this.nameComplete, this.complementName, this.ean, this.referenceId, this.measurementUnit, this.unitMultiplier, this.modalType, this.isKit, this.images, this.tamanho, this.variations, this.sellers, this.estimatedDateArrival});

	Items.fromJson(Map<String, dynamic> json) {
		itemId = json['itemId'];
		name = json['name'];
		nameComplete = json['nameComplete'];
		complementName = json['complementName'];
		ean = json['ean'];
		if (json['referenceId'] != null) {
			referenceId = new List<ReferenceId>();
			json['referenceId'].forEach((v) { referenceId.add(new ReferenceId.fromJson(v)); });
		}
		measurementUnit = json['measurementUnit'];
		unitMultiplier = json['unitMultiplier'];
		modalType = json['modalType'];
		isKit = json['isKit'];
		if (json['images'] != null) {
			images = new List<Images>();
			json['images'].forEach((v) { images.add(new Images.fromJson(v)); });
		}
		tamanho = json['Tamanho'].cast<String>();
		variations = json['variations'].cast<String>();
		if (json['sellers'] != null) {
			sellers = new List<Sellers>();
			json['sellers'].forEach((v) { sellers.add(new Sellers.fromJson(v)); });
		}
		estimatedDateArrival = json['estimatedDateArrival'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['itemId'] = this.itemId;
		data['name'] = this.name;
		data['nameComplete'] = this.nameComplete;
		data['complementName'] = this.complementName;
		data['ean'] = this.ean;
		if (this.referenceId != null) {
      data['referenceId'] = this.referenceId.map((v) => v.toJson()).toList();
    }
		data['measurementUnit'] = this.measurementUnit;
		data['unitMultiplier'] = this.unitMultiplier;
		data['modalType'] = this.modalType;
		data['isKit'] = this.isKit;
		if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
		data['Tamanho'] = this.tamanho;
		data['variations'] = this.variations;
		if (this.sellers != null) {
      data['sellers'] = this.sellers.map((v) => v.toJson()).toList();
    }
		data['estimatedDateArrival'] = this.estimatedDateArrival;
		return data;
	}
}