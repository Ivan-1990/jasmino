class AddAttachmentMainPictureToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.has_attached_file :main_picture
    end
  end

  def self.down
    drop_attached_file :products, :main_picture
  end
end
