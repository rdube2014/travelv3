class CreatePhotoResponses < ActiveRecord::Migration
  def change
    create_table :photo_responses do |t|
      t.integer :photo_id
      t.integer :reply_id
    end
  end
end
