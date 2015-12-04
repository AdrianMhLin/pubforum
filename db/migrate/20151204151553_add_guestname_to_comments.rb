class AddGuestnameToComments < ActiveRecord::Migration
  def change
    add_column :comments, :guestname, :string
  end
end
