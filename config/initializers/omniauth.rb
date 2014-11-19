Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'] = '0a2434efd1f90e8e411d', ENV['GITHUB_SECRET'] = '29d03077239aa5cd0e1997d5b2c0b541b5f4bd49'
end
