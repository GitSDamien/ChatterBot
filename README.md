# flask-chatterbot

#### A web implementation of [ChatterBot](https://github.com/gunthercox/ChatterBot) using Flask.

## Local Setup:
 1. Ensure that Python, Flask, SQLAlchemy, and ChatterBot are installed (either manually, or run `pip install -r requirements.txt`).
 2. Run *app.py*
 3. Base URL will be [http://localhost:5000/](http://localhost:5000/)

## Usage example:
*   [/get/how are you?](http://localhost:5000/get/how%20are%20you?)
  *   Browser handles whitespace for you ([/get/how%20are%20you?](http://localhost:5000/get/how%20are%20you?))
  *   Returns raw response (ex: I am good).

## How do I deploy this to a web server?
If you do not have a dedicated server, I highly recommend using [PythonAnywhere](https://www.pythonanywhere.com/), [AWS](https://aws.amazon.com/getting-started/projects/deploy-python-application/) or [Heroku](https://devcenter.heroku.com/articles/getting-started-with-python#introduction) to host your application.

*IMPORTANT:* If you are deploying on Heroku, you will have to change the database adapter from `chatterbot.storage.SQLStorageAdapter` to `chatterbot.storage.MongoDatabaseAdapter` since SQLite3 isn't supported. To do this simply change the following line:

`english_bot = ChatBot("English Bot", storage_adapter="chatterbot.storage.SQLStorageAdapter")`

... to use the MongoDB adapter:

```
english_bot = ChatBot("English Bot", 
                     storage_adapter = "chatterbot.storage.MongoDatabaseAdapter",
                     database = mongodb_name,
                     database_uri = mongodb_uri)
```
... where `mongodb_name` is the name of the database you wish to connect to and `mongodb_uri` is the URI of a remote instance of MongoDB.




docker pull voyant/chatterbot

docker run -p 5000:5000 voyant/chatterbot /bin/bash

http://localhost:5000


docker build -t my-chatter-bot .

https://github.com/anpisolutions/chatterbot
https://hub.docker.com/r/voyant/chatterbot

https://chatterbot.readthedocs.io/en/stable/
https://pypi.org/project/ChatterBot/

https://spacy.io/usage/models#download


https://dashboard.ngrok.com/get-started/setup

https://github.com/howdyai/botkit
https://github.com/nltk/nltk
https://www.nltk.org/install.html
https://github.com/llSourcell/tensorflow_chatbot
https://github.com/petkofff/p_vs_np_challenge
https://gist.github.com/AliElDerawi/062bd39563d4590e775b6d3e43b23b86
https://www.editions-eni.fr/open/mediabook.aspx?idR=4f6533dcf1b656c8b5b48c9c3572e1fa
https://fr.slideshare.net/Developpeurs/crer-un-bot-de-a-z
https://botpress.com/
https://github.com/pokurt/Chatterbot-API#readme
https://github.com/orvice/ChatterBot-flask
https://steemit.com/technology/@wlakinsson/ml-2-aml-natural-language-processing-telegram-chat-bot
https://github.com/citrusframework/telegram-docker-image
https://www.pragnakalp.com/build-an-automated-ai-powered-telegram-chatbot-with-chatgpt-using-flask/?utm_source=rss&utm_medium=rss&utm_campaign=build-an-automated-ai-powered-telegram-chatbot-with-chatgpt-using-flask
https://medium.com/@ikunyankin/build-an-ai-based-telegram-bot-with-rasa-b710869351f0
https://rasa.com/docs/rasa/domain/#images-and-buttons

https://studygyaan.com/python/create-web-based-chatbot-in-python-django-flask

