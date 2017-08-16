class Comment < ApplicationRecord
  belongs_to :post
  validates :body, presence: true

  #counter_culture :post, column_name: 'comments_count'

end
