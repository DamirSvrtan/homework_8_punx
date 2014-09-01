# Readme

## Google Contact API

Retreive all contacts:

https://www.google.com/m8/feeds/contacts/damir.svrtan@gmail.com/full?access_token=ya29.cgBMbBBXlTYLpBtJu7g&max-results=50&alt=json

Access token se dobije nakon G+ ulogiravanja sa: request.env['omniauth.auth'][:credentials][:token]

https://developers.google.com/google-apps/contacts/v3/reference#Parameters