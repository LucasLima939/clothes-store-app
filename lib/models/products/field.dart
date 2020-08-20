

class Field {
	int id;
	String name;
	bool isActive;
	int position;
	String type;

	Field({this.id, this.name, this.isActive, this.position, this.type});

	Field.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		name = json['name'];
		isActive = json['isActive'];
		position = json['position'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['name'] = this.name;
		data['isActive'] = this.isActive;
		data['position'] = this.position;
		data['type'] = this.type;
		return data;
	}
}
