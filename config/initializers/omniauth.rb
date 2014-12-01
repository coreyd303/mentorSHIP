Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, Figaro.env.github_id, Figaro.env.github_secret
end

 
