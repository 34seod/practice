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

  # default_scope { order(updated_at: :desc) }
  scope :gihyo, -> { where(publish: '技術評論社') }
  scope :newer, -> { order(published: :desc) }
  scope :top10, -> { newer.limit(10) }
  scope :whats_new, -> (pub) { where(publish: pub).order(published: :desc).limit(5) }
end
