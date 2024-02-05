Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins 'https://jvt-scheduled-tweets-3d63fadf8a08.herokuapp.com'
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
end