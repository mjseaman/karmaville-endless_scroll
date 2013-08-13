class AddKarmaSumIndexToUsers < ActiveRecord::Migration
  def change
    add_index :users, :karma_sum, name: 'karma_sum_index'
  end
end
