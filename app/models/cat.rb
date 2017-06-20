

class Cat < ApplicationRecord
  CAT_COLORS = %w(black grey brown orange white)

  validates :color, presence: true, inclusion: { in: CAT_COLORS, message: "%{value} is not a valid color" }
  validates :sex, presence: true, inclusion: { in: %w(M F), message: "%{value} is not a valid sex" }
  validates :description, presence: true
  validates :birth_date, presence: true
  validates :name, presence: true

  def age
    Time.now - :birth_date
  end


end
