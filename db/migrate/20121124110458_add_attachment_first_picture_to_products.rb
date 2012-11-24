class AddAttachmentFirstPictureToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.has_attached_file :first_picture
    end
  end

  def self.down
    drop_attached_file :products, :first_picture
  end
end
