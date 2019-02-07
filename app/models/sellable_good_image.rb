class SellableGoodImage < ApplicationRecord
  belongs_to :sellable_good
  has_attached_file :url
  validates_attachment_content_type :url, content_type: /\Aimage\/.*\z/

  def url_remote_url=(url)
    puts url
    self.url = URI.parse(url)
    @url_remote_url = url
  end
end
