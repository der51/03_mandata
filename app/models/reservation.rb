# == Schema Information
#
# Table name: reservations
#
#  id                :integer          not null, primary key
#  notary_table_id   :integer
#  notary_table_type :string(255)
#  status            :string(255)
#  reserve_at        :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Reservation < ActiveRecord::Base
  extend Enumerize
  enumerize :notary_table_type, in: [:foreign], default: :foreign
  enumerize :status, in: [:pending, :handled, :refused], default: :pending

  by_star_field :reserve_at

  def notary_table
    if self.notary_table_type == 'foreign'
      NotaryForeignTable.find(self.notary_table_id)
    else
      nil
    end
  end

  def user_realname
    notary_table.realname
  end
end
