Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "8c0f9f5fbaad50e3e2a7", "bac88bc5866f2169b982b9c024134d62978225d5"
  else
    provider :github,
             Rails.application.credentials.github[:client_id],
             Rails.application.credentials.github[:client_secret]
  end
end
