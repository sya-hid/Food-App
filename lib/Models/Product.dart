class Product {
  final int price;
  final String title, category, image, subTitle, description;

  Product({
    this.price,
    this.title,
    this.category,
    this.image,
    this.subTitle,
    this.description,
  });
}
// It create an Category from JSON
//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       title: json["title"],
//       image: json["image"],
//       price: json["price"],
//       category: json["category"],
//       subTitle: json["subTitle"],
//       description: json["description"],
//     );
//   }
// }

List<Product> product = [
  Product(
      price: 16,
      title: "Quinoa Salad",
      image: "greek_quinoa_salad-removebg-preview.png",
      category: "Chair",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      price: 16,
      title: "Quinoa Salad",
      image: "greek_quinoa_salad-removebg-preview.png",
      category: "Chair",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      price: 16,
      title: "Quinoa Salad",
      image: "greek_quinoa_salad-removebg-preview.png",
      category: "Chair",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      price: 16,
      title: "Quinoa Salad",
      image: "greek_quinoa_salad-removebg-preview.png",
      category: "Chair",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      price: 16,
      title: "Quinoa Salad",
      image: "greek_quinoa_salad-removebg-preview.png",
      category: "Chair",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      price: 16,
      title: "Quinoa Salad",
      image: "greek_quinoa_salad-removebg-preview.png",
      category: "Chair",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
];
