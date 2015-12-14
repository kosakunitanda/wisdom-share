class Answer < ActiveRecord::Base
  belongs_to :question
  validates :question_id, presence: true
  validates :content, presence: true, length: { maximum: 1024 }

end
