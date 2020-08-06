# 🚀 Webhook Action

A Github Action for sending data to an endpoint

Supports all [workflow event types](https://developer.github.com/webhooks/#events)

<hr/>

## Usage

Sending a string:

```yml
- name: Webhook
  uses: JobNimbus/webhook-action@master
  env:
    WEBHOOK_URL: ${{ secrets.WEBHOOK_URL }}
    data: "Hello from github actions!"
```

Sending a body of data:

```yml
- name: Webhook
  uses: JobNimbus/webhook-action@master
  env:
    WEBHOOK_URL: ${{ secrets.WEBHOOK_URL }}
    data: "{'deployment': 'finished', 'project': 'actions'}"
```

It is **highly** recommended to use the action is an explicit commit SHA-1:

`uses = "JobNimbus/webhook-action@{SHA-1}"` to find a commit click here: https://github.com/JobNimbus/webhook-action/commits/master

### Arguments

* ```yml 
  data: "Hello from github actions!"
  ```

* ```yml
  data: "{'deployment': 'finished', 'project': 'actions'}"
  ```

### Environment

The action is expecting a single environment variable of your data. This can be pre-encoded json string, or just a message. Format it to how your API is expecting.

* **`WEBHOOK_URL`** (**required**): This is the webhook url to send the payload to.
