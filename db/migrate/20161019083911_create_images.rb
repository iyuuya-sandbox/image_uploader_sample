class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.references :fileable, polymorphic: true
      t.string :caption
      t.string :file
      t.string :name
      t.string :content_type
      t.string :digest

      t.timestamps
    end
  end
end
