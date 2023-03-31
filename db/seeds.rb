# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create(
    branch: "branch1",
    description: "arbol",
    price: 1000
)

Product.create(
    branch: "branch2",
    description: "radar",
    price: 2000
)

Product.create(
    branch: "branch3",
    description: "estrella",
    price: 3500
)