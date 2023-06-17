
import 'dart:convert';

List<Category> PopularCategoryFromJson(String value)=>
    List<Category>.from(jsonDecode(value)['data']
        .map((category)=> Category.PopularCategoryFromJson(category))
    );

class Category {
  final int id;
  final String name;
  final String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });
  factory Category.PopularCategoryFromJson(Map<String, dynamic> data) =>
      Category(
          id: data['id'],
          name: data['attributes']['category']['data']['attributes']['name'],
          image: data['attributes']['category']['data']['attributes']['image']
              ['data']['attributes']['url']);
}
