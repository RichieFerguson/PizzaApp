# README

PizzaApp
This is a Rails application for managing pizzas and toppings with role-based access:

Owner can create, update, destroy, and list all toppings (plus pizzas).
Chef can create, update, destroy, and list all pizzas, and add/remove existing toppings to them.

Requirements
Ruby 3.x or higher
Rails 8.1
A working PostgreSQL/SQLite/MySQL (depending on your config)
Bundler (to install gems)

Features Overview
Manage Toppings (Owner)
As a pizza store owner, you should be able to manage toppings available for your pizza chefs:

List: See a list of available toppings (/toppings)
Create: Add a new topping (/toppings/new)
Update: Edit an existing topping (/toppings/:id/edit)
Delete: Remove an existing topping
Duplicate constraint: The system will not allow duplicate topping names.
In the controller, only an owner (role = "owner") can perform create/update/destroy actions for toppings. Chefs can only view toppings.

Manage Pizzas (Chef / Owner)
As a pizza chef (or owner), you can manage pizzas:

List: See a list of existing pizzas and their toppings (/pizzas)
Create: Create a new pizza and choose from existing toppings
Update: Update an existing pizza, including changing its toppings
Delete: Remove an existing pizza
Duplicate constraint: The system will not allow duplicate pizza names.
The system enforces that each pizza is unique by name. Both roles (owner or chef) can create/update/destroy pizzas, but toppings must already exist for a chef to add them (only owners can create new topping entries).
