class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.text :last_name
      t.string :homepage
      # t.has_and_belongs_to_many :paper

      t.timestamps
    end
  end
end
