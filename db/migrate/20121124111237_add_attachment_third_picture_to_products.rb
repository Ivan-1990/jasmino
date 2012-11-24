class AddAttachmentThirdPictureToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.has_attached_file :third_picture
    end
  end

  def self.down
    drop_attached_file :products, :third_picture
  end
end
