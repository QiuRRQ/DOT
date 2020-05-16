
class Gallery {

  String caption;
  String thumbnail;
  String image;

	Gallery.fromJsonMap(Map<String, dynamic> map):
		caption = map["caption"],
		thumbnail = map["thumbnail"],
		image = map["image"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['caption'] = caption;
		data['thumbnail'] = thumbnail;
		data['image'] = image;
		return data;
	}
}
