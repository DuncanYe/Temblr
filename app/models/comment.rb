class Comment < ApplicationRecord
  belongs_to :post
  validates_presence_of :name, :body

  def count
    "寫能算出comment的方法"
  end

end
