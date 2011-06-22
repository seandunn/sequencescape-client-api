require 'sequencescape/asset'
require 'sequencescape/behaviour/barcoded'

class Sequencescape::Plate < ::Sequencescape::Asset
  include Sequencescape::Behaviour::Barcoded

  has_many :wells, :disposition => :inline
  belongs_to :plate_purpose

  attribute_accessor :size, :iteration, :state
end
