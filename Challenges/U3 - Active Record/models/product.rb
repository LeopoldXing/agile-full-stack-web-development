class Product < ActiveRecord::Base

  # This AR object is linked with the products table.
  # The products table has the following columns: id, name, description, price, stock_quantity, category_id, created_at, updated_at.
  # A product has a [many to one] relationship with category.

  # validation
  validates :name, :description, :price, :stock_quantity, presence: true # presence: true means the value can't be nil or empty.
  validates :name, uniqueness: true # name should be unique.
  validates :name, length: { minimum: 3 } # name should be at least 2 characters long.

  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  belongs_to :category

end