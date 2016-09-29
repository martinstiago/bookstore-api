class Author < ApplicationRecord
  has_many :books
  has_many :published, as: :publisher, foreign_key: :publisher_id, class_name: 'Book'

  def discount
    10
  end
end
