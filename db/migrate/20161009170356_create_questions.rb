class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :text
      t.email :email
      t.name :name
      t.timestamps
    end
  end
end
