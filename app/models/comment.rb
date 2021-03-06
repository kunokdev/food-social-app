class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  # Validations
  validates :content,
    presence: true,
    length: {maximum: 200}

end
