import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Appetizers',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.cyan,
  ),
  Category(
    id: 'c3',
    title: 'Smoothies & Bowls',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c4',
    title: 'Sandwiches & Burgers',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Salads & Bowls',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Indian',
    color: Colors.orange,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.red,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.indigo,
  ),
  Category(
    id: 'c9',
    title: 'Mexican',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
  Category(
    id: 'c11',
    title: 'Thai',
    color: Colors.green,
  ),
  Category(
    id: 'c12',
    title: 'Drinks',
    color: Colors.lightBlue,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
      'c9',
      'c10',
    ],
    title: 'Banana Chips & Guacamole',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://vegan-meals-assets-flutter.s3.ca-central-1.amazonaws.com/banana-chips-guacamole.jpg',
    duration: 20,
    ingredients: [
      '2 bananas',
      '1 avacodo',
      '1 jalepeno, minced',
      '1 Tablespoon of Red Onion, minced',
      '1 teaspoon cumin',
      '1/4 teaspoon salt',
    ],
    steps: [
      'Slice the bananas thinly and fry until crispy',
      'Mash avocado',
      'Combine rest of ingredients with mashed avocado',
      'Cut the tomatoes and the onion into small pieces.',
      'Serve immediately with the chips',
    ],
    isGlutenFree: true,
    isSugarFree: true,
    isNutFree: true,
    isLowCal: false,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
      'c3',
      'c7',
      'c10',
    ],
    title: 'Arugum Bay Smoothie Bowl',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://vegan-meals-assets-flutter.s3.ca-central-1.amazonaws.com/bay-smoothie-bowl.jpg',
    duration: 10,
    ingredients: [
      '1 Mango, chopped, frozen',
      '2 Banana, sliced, seperated',
      '100 ml plant-based milk',
      '1 apple, sliced',
      '1 passion fruit,',
      '2 Tablespoons peanuts, chopped'
    ],
    steps: [
      'Blend mango, 1 1/2 banas, plant-based milk until smooth',
      'Top with the rest of the ingredients'
    ],
    isGlutenFree: true,
    isSugarFree: true,
    isNutFree: false,
    isLowCal: true,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c4',
      'c10',
    ],
    title: 'Classic Vegan Hamburger',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://vegan-meals-assets-flutter.s3.ca-central-1.amazonaws.com/cabo-burger.jpg',
    duration: 45,
    ingredients: [
      '1 vegan patty',
      '1 Tomato, sliced',
      '1 Pickle, sliced',
      '1 Carrot, shredded',
      '1 Beet, shredded',
      '1 onion, sliced'
      'Vegan chipotle aioli'
      'Lettuce',
      'Burger Bun'
    ],
    steps: [
      'Cook patty according to instructions',
      'Quickly fry the buns for c. 1 minute on each side',
      'Brush buns with aioli',
      'Serve burger with tomato, pickle, carrot, beet, onion'
    ],
    isGlutenFree: false,
    isSugarFree: false,
    isNutFree: true,
    isLowCal: false,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c2',
      'c5',
      'c8',
    ],
    title: 'Calgary Tofu Bowl',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://vegan-meals-assets-flutter.s3.ca-central-1.amazonaws.com/calgary-tofu-bowl.jpg',
    duration: 60,
    ingredients: [
      '1lb cubed tofu, fried',
      '100g cooked jasmine rice',
      'cucumber slices',
      'avocado slices',
      'tomato cubes',
      '50g cooked edamame, no shells',
      'fried wonton wrappers',
      'sweet chilli sauce'
    ],
    steps: [
      'Construct bowl by first putting rice in a bowl',
      'Add the veggies',
      'Add the tofu',
      'Top with fried wonton wrappers, sliced green onions, and sweet chilli sauce',
    ],
    isGlutenFree: false,
    isSugarFree: false,
    isNutFree: true,
    isLowCal: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c6',
      'c8',
      'c11',
    ],
    title: 'Sri Lankan Rice and Curry',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://vegan-meals-assets-flutter.s3.ca-central-1.amazonaws.com/sri-lanka-curry.jpg',
    duration: 60,
    ingredients: [
      'Rice',
      'Assorted veggie curries',
    ],
    steps: [
      'Buy from local seller',
      'Very complex to make all'
    ],
    isGlutenFree: true,
    isSugarFree: true,
    isNutFree: false,
    isLowCal: false,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c2',
      'c9',
      'c10',
    ],
    title: 'La Paz Tacos',
    affordability: Affordability.Affordable,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://vegan-meals-assets-flutter.s3.ca-central-1.amazonaws.com/la-paz-tacos.jpg',
    duration: 240,
    ingredients: [
      'Vegan taco meat',
      'Chopped white onion',
      'Minced cilantro',
      'Salsa Picante',
      'Fresh cut limes',
      'Corn tortillas',
    ],
    steps: [
      'Cook vegan taco meat',
      'Warm corn tortillas on grill',
      'Construct tacos'
    ],
    isGlutenFree: true,
    isSugarFree: true,
    isNutFree: true,
    isLowCal: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c2',
      'c3',
      'c7',
      'c12',
    ],
    title: 'Mango-Mint Smoothie',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://vegan-meals-assets-flutter.s3.ca-central-1.amazonaws.com/smoothie.jpg',
    duration: 20,
    ingredients: [
      '1 mango, frozen',
      'pineapple chunks',
      'handful of mint',
      'handful of ice cubes'
    ],
    steps: [
      'Combine all ingredients in blender',
      'Blend until smooth'
    ],
    isGlutenFree: true,
    isSugarFree: false,
    isNutFree: true,
    isLowCal: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c5',
      'c8',
    ],
    title: 'Vietnamese Noodle Bowl',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://vegan-meals-assets-flutter.s3.ca-central-1.amazonaws.com/vietnamese-noodle-bowl.jpg',
    duration: 35,
    ingredients: [
      'rice noodles',
      'shitake mushrooms, marinated and grilled',
      'cilantro',
      'mint',
      'lettuce',
      'shredded carrots',
      'sliced radishes',
      'sliced and cored cucumbers',
      'sesame seeds',
      'toasted peanuts'
    ],
    steps: [
      'Construct bowl by first adding the noodles',
      'On top of the noodles, place the cilantro, mint and lettuce',
      'Add the carrots, radishes, and cucumbers',
      'Top with grilled mushrooms and toasted peanuts',
    ],
    isGlutenFree: true,
    isSugarFree: false,
    isNutFree: false,
    isLowCal: false,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c2',
      'c4',
    ],
    title: 'Veggie Sandwich',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://vegan-meals-assets-flutter.s3.ca-central-1.amazonaws.com/la-paz-sandwich.jpg',
    duration: 45,
    ingredients: [
      'Fresh baked bread',
      'avocado',
      'vegan cheese',
      'roasted onions',
      'roasted asparagus',
      'roasted peppers',
    ],
    steps: [
      'Construct sandwich by first cutting the bread',
      'Add the ingredients, one at a time, as a layer',
      'Toast with a panini press',
      'Serve warm'
    ],
    isGlutenFree: false,
    isSugarFree: false,
    isNutFree: false,
    isLowCal: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isSugarFree: true,
    isNutFree: true,
    isLowCal: true,
  ),
];
