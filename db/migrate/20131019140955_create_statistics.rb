class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :hits
      t.integer :published_posts
      t.integer :post_views
      t.integer :post_shared

      t.timestamps
    end
  end
end
