# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  dm              :boolean
#  email           :string
#  password_digest :string
#  reviews_count   :integer
#  roles           :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
end
