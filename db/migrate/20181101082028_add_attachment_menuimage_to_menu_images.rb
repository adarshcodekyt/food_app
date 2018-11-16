class AddAttachmentMenuimageToMenuImages < ActiveRecord::Migration[5.2]
  def self.up
    change_table :menu_images do |t|
      t.attachment :menuimage
    end
  end

  def self.down
    remove_attachment :menu_images, :menuimage
  end
end
