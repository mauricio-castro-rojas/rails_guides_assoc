class CreateParagraphs < ActiveRecord::Migration[7.0]
  def change
    create_table :paragraphs do |t|
      t.string :content
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
