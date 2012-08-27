This is a sample Rails API, used in [NSScreencast Episode 31](http://nsscreencast.com/episodes/31-forms).

It houses pictures of people's lattes, and allows users to submit via the API.

## Hosted at Heroku

You can tinker with this app at live [here](http://best-latte.herokuapp.com/admin).  The login is:

- Username:  _admin@example.com_
- Password:  _password_

Please be respectful and don't post anything inappropriate.

## Setting this up on your own machine or server

Clone the repository.  Create & migrate the database.  Finally, create a `.env` file and put the following in it:

````
S3_ACCESS_KEY_ID="YOUR_ACCESS_KEY"
S3_SECRET_ACCESS_KEY="YOUR_SECRET_KEY"
````

You must also change the directory in which the photos are stored.  You can find this setting in `config/carrierwave.rb`.

## Running the app

This app uses foreman to automatically load up the `.env` vars and fire up the server.  To start it up, type:

```
foreman start
```

Once it's up and running, you can access the server at `http://localhost:5000`.
