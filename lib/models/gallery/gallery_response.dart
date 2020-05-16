import 'package:dot_test/models/gallery/gallery.dart';

class GalleryResponse {

  int status_code;
  List<Gallery> data;

	GalleryResponse.fromJsonMap(Map<String, dynamic> map):
		status_code = map["status_code"],
		data = List<Gallery>.from(map["data"].map((it) => Gallery.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['status_code'] = status_code;
		data['data'] = data != null ? 
			this.data.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}
