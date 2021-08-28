# ApiTeachr
importez la base de donnée dans votre phpmyadmin

crée un nouveau projet symfony à l'aide de la commande symfony new --full "votre nom de projet" puis importez tout les dossiers/fichers sauf le dossier "public".


si vous avez un localhost avec un mot de passe allez dans le dossier .env avec un éditeur de texte puis modifiez la ligne 27:
DATABASE_URL="mysql://root:@127.0.0.1:3306/apiteachr?serverVersion=5.7" par DATABASE_URL="mysql://root:root@127.0.0.1:3306/apiteachr?serverVersion=5.7"
entrez ensuite dans votre dossier symfony puis démarrer ensuite le serveur à l'aide de la commande Symfony server:start.


Vous pouvez ensuite regardez les différentes méthodes à l'aide de Postman par exemple en tapant les url suivants:
GET : (Votre ip de localhost)/rest/teachr/ ou  (Votre ip de localhost)/rest/teachr/view/(une id que vous avez trouver dans le 1er lien)
POST : (Votre ip de localhost)/rest/teachr/new?prenom=(le prénom que vous voulez)
PUT : (Votre ip de localhost)/rest/teachr/edit/(l'id que vous souhaitez modifier)?prenom=(le nom que vous voulez)
