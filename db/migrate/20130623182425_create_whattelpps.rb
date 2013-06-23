class CreateWhattelpps < ActiveRecord::Migration
  def change
    create_table :whattelpps do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
