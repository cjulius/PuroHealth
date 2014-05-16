# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patient_file_item do
    user nil
    fileitemtype nil
    notes "MyText"
    p_c_p nil
  end
end
