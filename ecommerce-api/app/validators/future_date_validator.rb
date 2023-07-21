class FutureDateValidator < ActiveModel::EachValidator
  def validate_each(record, attibuite, value)
    if value.present? && value <= Time.zone.now
      message = options[:message] || :future_date
      record.errors.add(attibuite, message) 
    end
  end
end