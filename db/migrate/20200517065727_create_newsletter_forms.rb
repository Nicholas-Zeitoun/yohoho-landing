class CreateNewsletterForms < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletter_forms do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
