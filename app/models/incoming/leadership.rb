module Incoming
  class Leadership < ActiveRecord::Base
    belongs_to :workcamp, :class_name => 'Incoming::Workcamp'
    belongs_to :leader, :class_name => 'Incoming::Leader', :foreign_key => 'person_id'

    validates_uniqueness_of :person_id, :scope => [ :workcamp_id ]
    validates_uniqueness_of :workcamp_id, :scope => [ :person_id ]

    def to_label
      leader.nil? ? '-' : leader.name
    end
  end
end
