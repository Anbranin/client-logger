class ClientFormResponse < ApplicationRecord
  belongs_to :client_form
  belongs_to :form_field
end
