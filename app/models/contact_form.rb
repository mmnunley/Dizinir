class ContactForm < ActiveRecord::Base
	
  # include ActiveModel::Validations
  # include ActiveModel::Conversion
  # extend ActiveModel::Naming

   #attr_accessor :name, :email, :phone, :message

  validates :name, :email, :message, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
  
  #errors.add(:base, 'Line Items present')
  # def initialize(attributes = {})
  #   attributes.each do |name, value|
  #     send("#{name}=", value)
  #   end
  # end

  # def persisted?
  #   false
  # end


 
end
