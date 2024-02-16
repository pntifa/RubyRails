Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, '1044723646064-88uj11s257r42prisvobfpuum36of1c7.apps.googleusercontent.com ', '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', { 
      redirect_uri: 'http://localhost:3000/auth/google_oauth2/callback',
      scope: 'pennytifa@gmail.com, _Pennyy_' # Adjust the scope as needed
    }
  end
  