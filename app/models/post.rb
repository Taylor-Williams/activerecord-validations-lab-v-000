class Post < ActiveRecord::Base
  validates :title, presence: :true
  validates :content, length: {minimum: 50}
  validates :summary, length: {maximum: 50}
  validates :category, inclusion: {in: %w(Fiction, Non-Fiction)}
  validates :title, inclusion: {in: ["Won't believe", "Secret", "Top", "Guess"]}
end
