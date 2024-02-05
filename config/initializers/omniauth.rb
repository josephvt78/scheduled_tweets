Rails.application.config.middleware.use OmniAuth::Builder do
    #provider :twitter, Rails.application.credentials.dig(:twitter, :api_key), Rails.application.credentials.dig(:twitter, :api_secret), :setup => true
    provider :twitter, "tD2ADSpn8v0caHsUUOw5ylIB8","FDoMtIJbJqO39nkeX5ApuDylBEPVj5FElwPsr6elSwoQBSBj23" 
end