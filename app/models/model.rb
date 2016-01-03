class Model < ActiveRecord::Base
    has_many :modeltypes
    belongs_to :organization
end
