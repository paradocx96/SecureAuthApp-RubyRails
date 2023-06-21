class Book < ApplicationRecord
  validates_presence_of :title, :author, :genre, :publication_year, message: '- Must not be empty!'
  validates :title, :author, :genre, length: { minimum: 2 }
  validates :publication_year, length: { maximum: 4 }, format: { with: /\A^[0-9]/x, message: '- Must be a year!' }
end
