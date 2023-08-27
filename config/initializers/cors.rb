# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*" # Ajuste esse valor para limitar os domínios permitidos
    resource "*",
      headers: :any,
      methods: %i[get post put patch delete options head]
  end
end

unless Rails.env.test?
  Rails.application.config.middleware.use "GreenThumb", "API - OK!"
end
