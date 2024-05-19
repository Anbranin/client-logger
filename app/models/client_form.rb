class ClientForm < ApplicationRecord
  belongs_to :client
  belongs_to :form_template
end
