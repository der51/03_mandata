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
#  email        :string(255)
#  marry_status :string(255)
#  updated_once :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  avatar       :string(255)
#  id_no_img    :string(255)
#

class Profile < ActiveRecord::Base
  belongs_to :archive

  extend Enumerize
  enumerize :sex, in: [:male, :female], default: :male
  enumerize :marry_status, in: [:first_time, :single, :divorse_no_marry, :soul_die_no_marry, :divorse_again_marry, :soul_die_again_marry], default: :single

  mount_uploader :avatar, AvatarUploader
  mount_uploader :id_no_img, AvatarUploader

  validates_uniqueness_of :id_no

  validates :realname, realname: true
  validates :id_no, id_no: true
  validates :email, email: true, allow_blank: true

  validates :mobile, mobile: true, allow_blank: true, on: :update
  validates :sex, presence: true, on: :update

end
