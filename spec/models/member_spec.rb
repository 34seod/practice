# == Schema Information
#
# Table name: members
#
#  id           :bigint           not null, primary key
#  email        :string
#  lock_version :integer          default(0)
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe Member, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
