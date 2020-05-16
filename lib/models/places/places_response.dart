import 'package:dot_test/models/places/places.dart';

class PlacesResponse {

  int status_code;
  List<Places> data;

	PlacesResponse.fromJsonMap(Map<String, dynamic> map):
		status_code = map["status_code"],
		data = List<Places>.from(map["data"].map((it) => Places.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> Places = new Map<String, dynamic>();
		Places['status_code'] = status_code;
		Places['data'] = data != null ?
			this.data.map((v) => v.toJson()).toList()
			: null;
		return Places;
	}
}
