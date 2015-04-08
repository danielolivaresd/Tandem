class MatchLanguage < ActiveRecord::Base
  belongs_to :match
  belongs_to :language
  has_one :teacher, :class_name => 'MatchUser', :foreign_key => 'teacher_id'
  has_one :student, :class_name => 'MatchUser', :foreign_key => 'student_id'
end
