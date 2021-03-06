# == Schema Information
#
# Table name: posts
#
#  id               :integer          not null, primary key
#  title            :string
#  body             :text
#  description      :text
#  slug             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  banner_image_url :string
#  user_id          :integer
#  published        :boolean          default(TRUE)
#  published_at     :datetime
#

class Post < ApplicationRecord
  acts_as_taggable

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user

  PER_PAGE = 5

  scope :most_recent, -> { order(id: :desc) }
  scope :order_published, -> { order(published: :desc) }
  scope :published, -> { where(published: true) }
  scope :recent_paginated, -> (page) { most_recent.includes(:user, :tags).paginate(:page => page, :per_page => PER_PAGE ) }
  scope :with_tag, -> (tag) { tagged_with(tag) if tag.present? }
  scope :not_in_id, ->(id) { where('posts.id != ?',  id.to_s) }

  scope :list_for, -> (page, tag) do
    recent_paginated(page).with_tag(tag)
  end

  def should_generate_new_friendly_id?
    title_changed?
  end

  def display_day_published
    if published_at.present?
      "Published #{published_at.strftime('%-b %-d, %Y')}"
    else
      "Not published yet."
    end
  end

  def publish
    update(published: true, published_at: Time.now)
  end

  def unpublish
    update(published: false, published_at: nil)
  end
end
