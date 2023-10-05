class Classement < ApplicationRecord
  def self.findbydate(x)
    fr=I18n.t("date.month_names", locale: :fr).map(&:to_s)
    en=I18n.t("date.month_names", locale: :en).map(&:to_s)
    xx=x
    fr.each_with_index do |h,i|
      xx.gsub(h, i.to_s)
    end
    find_by(date: xx.to_date)
  end
  validates_uniqueness_of :date
  has_many :hits
  accepts_nested_attributes_for :hits, allow_destroy: true
  def self.derniersclassement
    self.order(:date => :desc).limit(2)
  end
end
