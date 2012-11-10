Meteor.users.allow(
  'remove': (record)->
    true
)

Accounts.onCreateUser((options, user) ->
  user.profile = options.profile if (options.profile)

  result = Meteor.http.get("https://graph.facebook.com/me", {
    params: {access_token: user.services.facebook.accessToken}
  })

  if !result.error && result.data
    user.profile.facebook = result.data

  user
)

Meteor.startup( ->
)
