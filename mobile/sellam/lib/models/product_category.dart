class ProductCategory{
  final int id;
  final String name;
  final String description;

  const ProductCategory({this.id, this.name, this.description});
}

List<ProductCategory> PRODUCT_CATEGORIES = <ProductCategory>[
  ProductCategory(
    id: 1,
    name: 'Food',
    description: 'No description',
  ),
  ProductCategory(
    id: 2,
    name: 'Tecnology',
    description: 'No description',
  ),
  ProductCategory(
    id: 3,
    name: 'Fashion',
    description: 'No description',
  ),
  ProductCategory(
    id: 4,
    name: 'Sport',
    description: 'No description',
  ),
];