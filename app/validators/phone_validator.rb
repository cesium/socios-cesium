class PhoneValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A9(1|2|3|6)\d{7}\z/i
      record.errors[attribute] << (options[:message] || "is not a phone number")
    end
  end
end