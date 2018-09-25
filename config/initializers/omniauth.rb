OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '599272092570-8je92lrjlsj4qj2f2n706mllo1h9pa1j.apps.googleusercontent.com', 'Hv92suYRb2oJxPYgf3f-RSY6', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end