class Medform < ApplicationRecord
  belongs_to :patient, :dependent => :destroy
end
