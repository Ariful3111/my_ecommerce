
import 'dart:convert';

List<adBanner> adBannerListFromJson(String value)=> List<adBanner>.from(
  json.decode(value)['data'].map((banner)=> adBanner.fromJson(banner))
);

class adBanner {
  final int id;
  final String image;

  adBanner({
   required this.id,
   required this.image
});

  factory adBanner.fromJson(Map<String, dynamic> data)=> adBanner(
  id: data['id'],
  image: data['attributes']['image']['data']['attributes']['url']
  );

}
