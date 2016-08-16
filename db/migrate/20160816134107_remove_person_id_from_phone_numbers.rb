class RemovePersonIdFromPhoneNumbers < ActiveRecord::Migration
  def change
    remove_column :phone_numbers, :person_id, :integer
  end
end
