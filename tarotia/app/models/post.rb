class Post < ApplicationRecord
  before_save :set_slug

  scope :published, -> { where.not(published_at: nil).order(published_at: :desc) }
  scope :featured, -> { published.where(featured: true) }

  def to_param
    slug
  end

  private

  def set_slug
    self.slug = title.parameterize if title.present? && slug.blank?
  end
end