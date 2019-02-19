class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :has_men_or_women

  def has_men_or_women
    if mens_apparel == false && womens_apparel == false
      errors.add(self.name, "must sell either mens or womens apparel")
    end
  end
end
