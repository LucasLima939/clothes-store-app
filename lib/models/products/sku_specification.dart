

import 'package:project_blu_k/models/products/values.dart';

import 'field.dart';

class SkuSpecifications {
	Field field;
	List<Values> values;

	SkuSpecifications({this.field, this.values});

	SkuSpecifications.fromJson(Map<String, dynamic> json) {
		field = json['field'] != null ? new Field.fromJson(json['field']) : null;
		if (json['values'] != null) {
			values = new List<Values>();
			json['values'].forEach((v) { values.add(new Values.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.field != null) {
      data['field'] = this.field.toJson();
    }
		if (this.values != null) {
      data['values'] = this.values.map((v) => v.toJson()).toList();
    }
		return data;
	}
}