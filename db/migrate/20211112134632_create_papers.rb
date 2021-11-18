class CreatePapers < ActiveRecord::Migration[6.0]
  def change
    create_table :papers do |t|
      t.string :title
      t.string :venue
      t.integer :year
      t.has_and_belongs_to_many :author

      t.timestamps
    end
  end
end
