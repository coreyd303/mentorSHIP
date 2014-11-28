class AddPhoneNumberToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :phone_number, :integer
  end
end
