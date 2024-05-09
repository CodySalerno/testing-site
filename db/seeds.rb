# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(
  email:    'charleshopson98@gmail.com',
  password: 'password'
)

user2 = User.create!(
  email:    'edwardsjessica2024@gmail.com',
  password: 'password'
)

user3 = User.create!(
  email:    "codysalerno2001@gmail.com",
  password: "password"
)

user4 = User.create!(
  email:    "nathan563412@gmail.com",
  password: "password"
)

prebuilt1 = Prebuilt.create!(
  name: "Alfred's Artistic Jet",
  description: "Designed by Alfred",
  manufacturer: "Boeing",
  color: "Mixed",
  size: "Large",
  price: 299999999
)
  prebuilt1_rev = Review.create!(
    comment:  "Amazing jets indeed.",
    rating:   4,
    creator:     user1
  )

prebuilt2 = Prebuilt.create!(
  name: "Brittany's Barbie Jet",
  description: "Designed by Brittany",
  manufacturer: "Boeing",
  color: "Pink",
  size: "Large",
  price: 449999999
)
  prebuilt2_rev = Review.create!(
    comment:  "The Barbie Jet is exact what my kid was looking for.",
    rating:   5,
    creator:     user2
  )


prebuilt3 = Prebuilt.create!(
  name: "Peter's Prehistoric Jet",
  description: "Designed by Peter",
  manufacturer: "Airbus",
  color: "Blue",
  size: "Small",
  price: 799999999
)
  prebuilt3_rev = Review.create!(
    comment:  "The Prehistoric Jet is great!",
    rating:   5,
    creator:     user3
  )


prebuilt4 = Prebuilt.create!(
  name: "Tianna's Tractor-Themed Jet",
  description: "Designed by Tianna",
  manufacturer: "Airbus",
  color: "Mixed",
  size: "Large",
  price: 199999999
)

  prebuilt4_rev = Review.create!(
    comment:  "Nice",
    rating:   5,
    creator:     user4
  )
