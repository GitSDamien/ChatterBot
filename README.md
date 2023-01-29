# flask-chatterbot

#### A web implementation of [ChatterBot](https://github.com/gunthercox/ChatterBot) using Flask.

## Local Setup:
 1. Assurez-vous d'avoir installé Python, Flask, SQLAlchemy et ChatterBot (soit manuellement, soit en exécutant `pip install -r requirements.txt`).
 2. Exécutez *app.py*
 3. L'URL de base sera [http://localhost:5000/](http://localhost:5000/)

## Exemple d'utilisation :
*   [/get/how are you?](http://localhost:5000/get/how%20are%20you?)
  *   Le navigateur gère les espaces pour vous ([/get/how%20are%20you?](http://localhost:5000/get/how%20are%20you?))
  *   Retourne la réponse brute (par exemple: Je vais bien).

## Comment déployer sur un serveur web ?
Si vous n'avez pas de serveur dédié, je vous recommande fortement d'utiliser [PythonAnywhere](https://www.pythonanywhere.com/), [AWS](https://aws.amazon.com/getting-started/projects/deploy-python-application/) ou [Heroku](https://devcenter.heroku.com/articles/getting-started-with-python#introduction) pour héberger votre application.

**IMPORTANT:** Si vous déployez sur Heroku, vous devrez changer l'adaptateur de base de données de `chatterbot.storage.SQLStorageAdapter` à `chatterbot.storage.MongoDatabaseAdapter` car SQLite3 n'est pas pris en charge. Pour ce faire, il suffit de changer la ligne suivante :

`english_bot = ChatBot("English Bot", storage_adapter="chatterbot.storage.SQLStorageAdapter")`

... pour utiliser l'adaptateur MongoDB :

```
english_bot = ChatBot("English Bot", 
                     storage_adapter = "chatterbot.storage.MongoDatabaseAdapter",
                     database = mongodb_name,
                     database_uri = mongodb_uri)
```
... où `mongodb_name` est le nom de la base de données que vous souhaitez utiliser et `mongodb_uri` est l'URI d'une instance distante de MongoDB.



