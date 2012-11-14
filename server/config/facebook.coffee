Accounts.loginServiceConfiguration.remove({})

if process.env.NODE_ENV == 'development'
  fb_data = {
    service: "facebook"
    appId: "114163378745469"
    secret: "9f823590e34f4e07ee9aa048723c2a8"
  }
else
  fb_data = {
    service: "facebook"
    appId: "518630964816458"
    secret: "99bdc17299cffa318f5f4990ac1e53e7"
  }

Accounts.loginServiceConfiguration.insert(fb_data)