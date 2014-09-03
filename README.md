# Readme

## Google Contact API

Retreive all contacts:

https://www.google.com/m8/feeds/contacts/damir.svrtan@gmail.com/full?access_token=ya29.cgBMbBBXlTYLpBtJu7g&max-results=50&alt=json

Access token se dobije nakon G+ ulogiravanja sa: request.env['omniauth.auth'][:credentials][:token]

https://developers.google.com/google-apps/contacts/v3/reference#Parameters

## Discussion

### Importing contacts

Should keep the token and token expiration of the user account which the user used to import contacts.
E.g. : A user logs in with facebook, but imports contacts with google, should keep the google token, not the facebook token.
Solution: Check with signed_in? upon google oauth, add new user if not signed in, add token and token expiration otherwise.