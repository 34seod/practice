# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  dl         :boolean
#  isbn       :string
#  price      :integer
#  publish    :string
#  published  :date
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Book < ApplicationRecord
  has_many :authors_books
end
