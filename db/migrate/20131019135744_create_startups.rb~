class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :fantasy_name
      t.string :cnpj_duns
      t.string :logo
      t.string :contact
      t.int :area
      t.string :location
      t.binary :files
      t.integer :message_limit

      t.timestamps
    end
  end
end
