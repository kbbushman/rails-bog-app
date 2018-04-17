class AddAttachmentAvatarToCreatures < ActiveRecord::Migration[5.2]
  def self.up
    change_table :creatures do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :creatures, :avatar
  end
end
