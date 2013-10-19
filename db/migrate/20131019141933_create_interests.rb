class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :type
      t.integer :state
      t.integer :city
      t.integer :region
      t.integer :area
      t.integer :number_employees
      t.datetime :foundation_time
      t.integer :number_investors
      t.integer :invested_startups
      t.integer :investor_groups
      t.integer :linked_startups

      t.timestamps
    end
  end
end
