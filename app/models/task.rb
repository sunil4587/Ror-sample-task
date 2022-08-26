class Task < ApplicationRecord
  validates :title, presence: true ,uniqueness: true
  validates :due_date, presence: true
  validate  :not_past_date
  enum status: [ :pending, :in_progress, :assigned]

  def not_past_date
    if self.due_date != nil
      if self.due_date < Date.today
        errors.add(:due_date, " can't be a past date")
      end
    end
  end
end
