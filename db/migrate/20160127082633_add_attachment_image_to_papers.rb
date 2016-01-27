class AddAttachmentImageToPapers < ActiveRecord::Migration
  def self.up
    change_table :papers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :papers, :image
  end
end
