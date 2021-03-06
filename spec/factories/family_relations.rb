# == Schema Information
#
# Table name: family_relations
#
#  id                :integer          not null, primary key
#  id_no             :string(255)
#  realname          :string(255)
#  relation_name     :string(255)
#  family_related_id :integer
#  updated_once      :boolean          default(FALSE)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryGirl.define do
  factory :family_relation do
    id_no "MyString"
    realname "MyString"
    relation "MyString"
  end

end
