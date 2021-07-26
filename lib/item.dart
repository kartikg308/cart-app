List color = [], sizes = [];

// ignore: non_constant_identifier_names
variant_color(product) {
  for (var i = 0; i < product.length; i++) {
    if (product[i]['variant_type'] == 'color') {
      color.add(product[i]['variant_value']);
    }
  }
  return color;
}

// ignore: non_constant_identifier_names
variant_size(product) {
  for (var i = 0; i < product.length; i++) {
    if (product[i]['variant_type'] == 'size') {
      sizes.add(product[i]['variant_value']);
    }
  }
  return sizes;
}