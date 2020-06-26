class DownloadCounter < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }

  validates :email, presence: true, length: { maximum: 255 },
    format: { with: URI::MailTo::EMAIL_REGEXP,
    :message => 'Invalid e-mail! Please provide a valid e-mail address' },
    uniqueness: { case_sensitive: false }
end
