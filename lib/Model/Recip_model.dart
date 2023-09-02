class recipes {
  String name;
  String steps;
  String imageURL;

  recipes({required this.imageURL, required this.name, required this.steps});

  factory recipes.fromMap({required Map data}) {
    return recipes(
        imageURL: data['imageURL'], name: data['name'], steps: data['steps']);
  }
}
