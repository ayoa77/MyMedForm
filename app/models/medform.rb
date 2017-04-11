class Medform < ApplicationRecord
  belongs_to :user, :dependent => :destroy
end
