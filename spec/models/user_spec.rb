# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  realname               :string(255)
#  id_no                  :string(255)
#  sex                    :string(255)
#  mobile                 :string(255)
#  birth_daty             :date
#  death_daty             :date
#  address                :string(255)
#  verified               :boolean          default(FALSE)
#

require 'rails_helper'

RSpec.describe User, type: :model do
end
