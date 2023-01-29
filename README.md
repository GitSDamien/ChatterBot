# ChatterBot

#### Une implémentation web de [ChatterBot](https://github.com/gunthercox/ChatterBot) utilisant Flask.

Nous sommes heureux de présenter notre projet open source de chatbot en développement. Basé sur ChatterBot, Flask et Docker, notre chatbot vise à fournir une expérience de conversation naturelle pour les utilisateurs.

Notre projet est encore en cours de développement et nous sommes en train de travailler dur pour le rendre aussi performant et fonctionnel que possible. Nous croyons que la communauté peut aider à améliorer ce projet en y apportant ses propres contributions et en fournissant des commentaires sur les fonctionnalités souhaitées.

Nous sommes fiers de faire partie de la communauté open source et de partager notre solution avec le monde. Si vous êtes intéressé par ce projet, n'hésitez pas à nous rejoindre et à participer au développement. Nous sommes impatients de travailler ensemble pour créer un chatbot de qualité pour tous.

## Qu'est ce qu'un chatbot ?

Un chatbot est un programme informatique conçu pour simuler une conversation avec des utilisateurs en utilisant des algorithmes de traitement du langage naturel et des règles prédéfinies. Il peut être utilisé pour aider les gens à trouver des informations, résoudre des problèmes et accomplir des tâches en ligne.

## Quels sont les avantages pour une société commerciale ?

- Amélioration de l'efficacité du service client en fournissant une réponse rapide et 24/7
- Diminution des coûts liés au service client en automatisant les tâches répétitives
- Augmentation de la satisfaction des clients en fournissant une assistance instantanée et personnalisée
- Amélioration de la collecte de données et de l'analyse de la satisfaction des clients
- Possibilité de toucher un public plus large et diversifié en utilisant les canaux de messagerie populaires
- Possibilité de vendre et de promouvoir des produits et services de manière interactive

## Quels sont les avantages à développer son propre chatbot ?

- Personnalisation de l'expérience utilisateur selon les besoins spécifiques de l'entreprise
- Possibilité d'intégrer des données internes et des workflows spécifiques
- Meilleure compétitivité en offrant un service client plus rapide et plus pratique
- Possibilité de collecter des données précieuses sur les clients et les utilisateurs
- Possibilité de développer une marque plus forte en offrant une expérience unique et différenciée

## Quelles sont les grandes étapes à réaliser pour développer un tel projet ?

1. Définition du but et des objectifs du chatbot
  Assurez-vous que le but et les objectifs du chatbot soient clairement définis et en ligne avec les objectifs de l'entreprise.
2. Recherche et analyse de l'audience cible
  Connaître bien l'audience cible pour pouvoir personnaliser le chatbot en conséquence.
3. Choix de la plateforme et du modèle de développement
  Choisir une plateforme fiable et flexible qui répond aux exigences spécifiques du projet.
4. Conception du scénario de conversation et des règles de traitement du langage naturel
  Créer un scénario de conversation convaincant qui offre une expérience utilisateur cohérente et naturelle.
5. Développement et tests du chatbot
  Effectuer des tests exhaustifs pour éliminer les erreurs et les bugs avant la mise en production.
6. Mise en production et surveillance en continu
  Surveiller en continu les performances du chatbot et les commentaires des utilisateurs pour effectuer des améliorations continues.
7. Mise à jour et amélioration continue
  Maintenir la confidentialité et la protection des données des utilisateurs.

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



