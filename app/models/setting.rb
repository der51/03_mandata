# == Schema Information
#
# Table name: settings
#
#  id         :integer          not null, primary key
#  var        :string(255)      not null
#  value      :text(65535)
#  thing_id   :integer
#  thing_type :string(30)
#  created_at :datetime
#  updated_at :datetime
#

class Setting < RailsSettings::CachedSettings
  defaults[:mobile_regex_format] = '^1[3|4|5|7|8][0-9]\\d{8}$'
  defaults[:realname_regex_format] = '^[\u4E00-\u9FA5]{2,10}$'
  defaults[:id_no_regex_format] = '^[0-9xX]{15,18}$'
  defaults[:email_regex_format] = '^[^@]+@[^@]+\.[^@]+$'
  defaults[:sync_notary_record_url] = URI.join(ENV['client_api_host'] || 'http://dao-lwnotary-lwnotary-platform-develop.daoapp.io/', 'api/v1/notary_records.json').to_s
  defaults[:set_user_verified_url] = URI.join(ENV['client_api_host'] || 'http://dao-lwnotary-lwnotary-platform-develop.daoapp.io/', '/api/v1/user_verify.json').to_s
  defaults[:sync_family_relation_url] = URI.join(ENV['client_api_host'] || 'http://dao-lwnotary-lwnotary-platform-develop.daoapp.io/', '/api/v1/sync_family_relation.json').to_s
  defaults[:client_token] = 'xxyy18745zz'
  defaults[:server_token] = '9ceeffeefcg'
end
