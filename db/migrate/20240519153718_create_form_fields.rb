class CreateFormFields < ActiveRecord::Migration[7.0]
  def change
    create_table :form_fields do |t|
      t.references :form_template, null: false, foreign_key: true
      t.string :label
      t.string :field_type
      t.boolean :required

      t.timestamps
    end
  end
end
