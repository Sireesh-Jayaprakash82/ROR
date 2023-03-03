# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  @product = Product.create([
    { name: "Television", brand: "Electronic Gadget", price_range: "Economical-range" },
    { name: "Computer", brand: "Electronic Gadget", price_range: "Gaming" },
    { name: "Laptop Bag", brand: "Protection Sling", price_range: "High-end" },
    ])
#   Character.create(name: "Luke", movie: movies.first)
