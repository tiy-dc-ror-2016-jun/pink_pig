class AddFieldsToQuotes < ActiveRecord::Migration
  def change
    #add_column :quotes, :showed_on, :date
    add_column :quotes, :currently_being_used, :boolean
    add_column :quotes, :used_before, :boolean
  end
end
