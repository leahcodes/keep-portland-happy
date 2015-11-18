class AddHoursToEats < ActiveRecord::Migration
  def change
    add_column :eats, :mon_happy_start, :integer, default: nil;
    add_column :eats, :mon_happy_end, :integer, default: nil;
    add_column :eats, :tues_happy_start, :integer, default: nil;
    add_column :eats, :tues_happy_end, :integer, default: nil;
    add_column :eats, :wed_happy_start, :integer, default: nil;
    add_column :eats, :wed_happy_end, :integer, default: nil;
    add_column :eats, :thur_happy_start, :integer, default: nil;
    add_column :eats, :thur_happy_end, :integer, default: nil;
    add_column :eats, :fri_happy_start, :integer, default: nil;
    add_column :eats, :fri_happy_end, :integer, default: nil;
    add_column :eats, :sat_happy_start, :integer, default: nil;
    add_column :eats, :sat_happy_end, :integer, default: nil;
    add_column :eats, :sun_happy_start, :integer, default: nil;
    add_column :eats, :sun_happy_end, :integer, default: nil;
    add_column :eats, :mon_open, :integer, default: nil;
    add_column :eats, :mon_close, :integer, default: nil;
    add_column :eats, :tues_open, :integer, default: nil;
    add_column :eats, :tues_close, :integer, default: nil;
    add_column :eats, :wed_open, :integer, default: nil;
    add_column :eats, :wed_close, :integer, default: nil;
    add_column :eats, :thur_open, :integer, default: nil;
    add_column :eats, :thur_close, :integer, default: nil;
    add_column :eats, :fri_open, :integer, default: nil;
    add_column :eats, :fri_close, :integer, default: nil;
    add_column :eats, :sat_open, :integer, default: nil;
    add_column :eats, :sat_close, :integer, default: nil;
    add_column :eats, :sun_open, :integer, default: nil;
    add_column :eats, :sun_close, :integer, default: nil;
  end
end
