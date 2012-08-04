class ContactForm < ActiveRecord::Migration

  	def up 
  		add_column(:contact_forms, :name, :string)
  		add_column(:contact_forms, :email, :string)
  		add_column(:contact_forms, :phone, :string)
  		add_column(:contact_forms, :message, :string)
  	end

  	def down 
  		remove_column(:contact_forms, :name, :string)
  		remove_column(:contact_forms, :email, :string)
  		remove_column(:contact_forms, :phone, :string)
  		remove_column(:contact_forms, :message, :string)
  	end

end
