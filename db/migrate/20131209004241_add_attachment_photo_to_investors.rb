class AddAttachmentPhotoToInvestors < ActiveRecord::Migration
  def self.up
    change_table :investors do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :investors, :photo
  end
end
