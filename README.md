# Sample Push Api Client

### Getting started

To use the client, simply run:

```bash
docker-compose up --build client
```

You'll get an error message as your response:
```
client_1  | HTTP Token: Access denied.
pushclient_client_1 exited with code 0
```

That's because your creds aren't right!

### Making authenticated requests

`client.rb` is the only file you should have to modify in this repo. Open it up and you'll see a place to add
your `app_id` and credentials (from the UI). Below that is a sample message object.
