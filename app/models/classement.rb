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
  def meshits
    hits.select("hits.*, (select (case when h.myorder > hits.myorder then '<' when h.myorder < hits.myorder then '>' when h.myorder = hits.myorder then '=' end) from hits h group by h.id having h.classement_id < hits.classement_id and h.song_id = hits.song_id order by h.classement_id desc limit 1) as monclassement")
    # and (select count(a.id) from classements a where a.id > hits.classement_id ) = 0
  end
end
