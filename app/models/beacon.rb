class Beacon < ActiveRecord::Base
  belongs_to :movie
  validates_presence_of :label, :url, :movie
  validates_uniqueness_of :label, scope: :movie
end
