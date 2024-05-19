class CreateClientFormResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :client_form_responses do |t|
      t.references :client_form, null: false, foreign_key: true
      t.references :form_field, null: false, foreign_key: true
      t.text :response

      t.timestamps
    end
  end
end
