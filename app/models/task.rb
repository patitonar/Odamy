class Task < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: [:slugged, :finders]

  belongs_to :project

  validates :title, presence: true, length: { maximum: 50 }
  validates :video, presence: true
  validates :project, presence: true

  def next
  	project.tasks.where("tag > ? AND header = ?", tag, false).order(:tag).first
  end

  def prev
  	project.tasks.where("tag < ? AND header = ?", tag, false).order(:tag).last
  end
end
