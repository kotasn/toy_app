class Micropost < ApplicationRecord

  # 1つのMicropostは１つのユーザに紐づく
  # Micropost(1) : User(1)の関係 
  belongs_to :user

  # content がブランクだった場合エラーとするバリデーション
  validates :content, length: { maximum: 140 }, presence: true
end
