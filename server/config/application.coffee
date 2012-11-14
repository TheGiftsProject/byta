if process.env.NODE_ENV == 'development'
  rootUrl = "blocal.giftsproject.com:3000"
else
  rootUrl = "byta.meteor.com"

Meteor.absoluteUrl.defaultOptions = {
  rootUrl: rootUrl
}

