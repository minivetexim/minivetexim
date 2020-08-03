class AddAttachmentCompanyImageToProfiles < ActiveRecord::Migration[5.2]
  def self.up
    change_table :profiles do |t|
      t.attachment :company_image
    end
  end

  def self.down
    remove_attachment :profiles, :company_image
  end
end
