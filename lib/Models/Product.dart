class Product {
  final double price;
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
    price: 18.00,
    title: "Quinoa Salad",
    image: "greek_quinoa_salad-removebg-preview.png",
    category: "Salad",
    subTitle: "Fresh Vegetable",
    description:
        "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
  ),
  Product(
    price: 16.00,
    title: "Chicken Salad",
    image: "chicken_salad-removebg-preview.png",
    category: "Salad",
    subTitle: "Delicated Salad",
    description:
        "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
  ),
  Product(
    price: 21.00,
    title: "Grilled Chicken Salad",
    image: "grilled-chicken-salad-68-of-71-removebg-preview.png",
    category: "Salad",
    subTitle: "Salad with Grilled Chicken",
    description:
        "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
  ),
  Product(
    price: 23.00,
    title: "Mixed Salad",
    image: "mixed_sald-removebg-preview.png",
    category: "Salad",
    subTitle: "Salad Fully Fruit",
    description:
        "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
  ),
  Product(
    price: 22.00,
    title: "Quinoa Salad",
    image: "quinoa_salad-removebg-preview.png",
    category: "Salad",
    subTitle: "Salad with quinoa seed",
    description:
        "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
  ),
  Product(
    price: 26.00,
    title: "Santa Fe Chicken Salad",
    image:
        "santa-fe-chicken-salad-with-tangy-lime-dressing-1-flavorthemoments.com_-300x300-removebg-preview.png",
    category: "Salad",
    subTitle: "Chicken Salad",
    description:
        "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
  ),
];
