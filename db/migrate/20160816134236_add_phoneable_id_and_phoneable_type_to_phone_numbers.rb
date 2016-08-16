class AddPhoneableIdAndPhoneableTypeToPhoneNumbers < ActiveRecord::Migration
  def change
    add_column :phone_numbers, :phoneable_id, :integer
    add_column :phone_numbers, :phoneable_type, :string
  end
end
