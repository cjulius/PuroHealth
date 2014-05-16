class PatientFileItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :fileitemtype
  belongs_to :p_c_p
end
