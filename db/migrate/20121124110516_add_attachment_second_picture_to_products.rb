class AddAttachmentSecondPictureToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.has_attached_file :second_picture
    end
  end

  def self.down
    drop_attached_file :products, :second_picture
  end
end
