class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  def is_discounted
    price < 10
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end
end
