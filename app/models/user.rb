class User < ApplicationRecord
  
  # Userは多くのMicropostsを持っている
  # User(多)：Micropost(１)の関係
  has_many :microposts

  # name, email がブランクだった場合にエラーとするバリデーション
  validates :name,  presence: true
  validates :email, presence: true
end
