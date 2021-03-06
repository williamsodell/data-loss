class Incident < ActiveRecord::Base
  scope :recent, -> { order('date DESC') }

  def days
    (Time.zone.today - date).to_i
  end
end
