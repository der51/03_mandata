class Util
  def self.random(length)
    num = rand(10 ** length)
    return num.to_s.rjust(length, '0')
  end

  def self.is_number?(verb)
    true if Float(verb) rescue false
  end

  def self.mobile_valid?(mobile)
    regex = Regexp.new(Setting.mobile_regex_format)
    !((mobile =~ regex).nil?)
  end

  def self.id_no_valid?(id_no)
    regex = Regexp.new(Setting.id_no_regex_format)
    !((id_no =~ regex).nil?)
  end

  def self.realname_valid?(realname)
    regex = Regexp.new(Setting.realname_regex_format)
    !((realname =~ regex).nil?)
  end

  def self.email_valid?(email)
    regex = Regexp.new(Setting.email_regex_format)
    !((email =~ regex).nil?)
  end

end
