class CreateClientForms < ActiveRecord::Migration[7.0]
  def change
    create_table :client_forms do |t|
      t.references :client, null: false, foreign_key: true
      t.references :form_template, null: false, foreign_key: true

      t.timestamps
    end
  end
end
