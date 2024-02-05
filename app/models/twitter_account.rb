class TwitterAccount < ApplicationRecord
  belongs_to :user
  has_many :tweets, dependent: :destroy

  validates :username, uniqueness: true

  def client
    x_credentials = {
      api_key:             "tD2ADSpn8v0caHsUUOw5ylIB8",
      api_key_secret:      "FDoMtIJbJqO39nkeX5ApuDylBEPVj5FElwPsr6elSwoQBSBj23",
      access_token:        token,
      access_token_secret: secret,
    }
    x_client = X::Client.new(**x_credentials)
    x_client
  end
end