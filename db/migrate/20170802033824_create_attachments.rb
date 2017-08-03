class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
    	t.string :data_file_name
    	t.string :data_content_type
    	t.integer :data_file_size
    	t.integer :attachable_id
    	t.string :attachable_type
      t.timestamps
    end

    add_index :attachments [:attachable_id, :attachable_type]
  end
end
