class AddAttachmentImageToPhotgrams < ActiveRecord::Migration
  def self.up
    change_table :photgrams do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :photgrams, :image
  end
end
