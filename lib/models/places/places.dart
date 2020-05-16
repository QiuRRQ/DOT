
class Places {

  String name;
  String location;
  String description;
  String image;

	Places.fromJsonMap(Map<String, dynamic> map):
		name = map["name"],
		location = map["location"],
		description = map["description"],
		image = map["image"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> Places = new Map<String, dynamic>();
		Places['name'] = name;
		Places['location'] = location;
		Places['description'] = description;
		Places['image'] = image;
		return Places;
	}
}
