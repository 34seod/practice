# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  address    :text
#  birth      :date
#  ctype      :string
#  name       :string
#  photo      :binary
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_authors_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Author < ApplicationRecord
  belongs_to :user
  # has_many :authors_books
  # has_many :books, through: :authors_books
  has_and_belongs_to_many :books
  has_many :comments, -> { where(deleted: false) }, class_name: 'FanComment', foreign_key: 'author_no'
  has_many :memos, as: :memoable
end
