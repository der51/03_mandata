# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  realname     :string(255)      default("")
#  id_no        :string(255)      default("")
#  sex          :string(255)
#  mobile       :string(255)
#  birth_day    :date
#  death_day    :date
#  address      :string(255)
#  archive_id   :integer
#  updated_once :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  avatar       :string(255)
#  id_no_img    :string(255)
#

FactoryGirl.define do
  factory :profile do
    realname "MyString"
id_no "MyString"
sex "MyString"
mobile "MyString"
birth_day "2015-09-13"
death_day "2015-09-13"
address "MyString"
archive_id 1
  end

end
