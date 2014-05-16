class Provider < ActiveRecord::Base
  belongs_to :name
  belongs_to :providertype
end
