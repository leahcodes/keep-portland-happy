class ChangeUserAddressDefault < ActiveRecord::Migration
  def change
    change_column_default(:users, :address, "Powell's Books, Portland OR")
  end
end
