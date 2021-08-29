# ApiTeachr
téléchargez le projet puis extrayez le

installez git à l'aide de votre navigateur préféré  https://git-scm.com/download/win

télécharger Postman à l'aide de votre navigateur préféré https://getcomposer.org/download/

----------------------------------------------------

Téléchargez WAMP ou XAMPP ou MAMP à l'aide de votre navigateur préféré, https://sourceforge.net/projects/wampserver/files/

Personellement j'utilise WAMP, si vous n'avez jamais utiliser WAMP/XAMPP/MAMP je vous conseil d'installer WAMP pour suivre le tutoriel si-dessous

lors de l'installation ils vous proposeras de changer de navigateur, choisissez celui que vous préférez.

appuyez sur votre touche windows de votre clavier puis tapez Wamp et ouvrez le en administrateur (il vous proposeras de le faire tout seul lors de l'ouverture)

Cliquez sur la fleche vers le haut en bas à droite de votre écran et vous verrez un icone de W coloré, s'il est vert au bout de quelques secondes c'est que l'installation c'est bien déroulé si il est jaune ou rouge réessayer de l'installer et si cela ne fonctionne pas regardez sur internet pour votre probleme.

cliquez gauche sur l'icone de W vert puis cliquez sur phpmyadmin, une fenetre de votre navigateur préféré s'ouvriras avec un utilisateur et un mot de passe.

pour le nom d'utilisateur mettez "root" et pour le mot de passe, vous le laisserez vide.

Cliquez sur "Executer", une nouvelle page apparaîtra.Si la page n'as pas changer mettez "root" en mot de passe avec "root" en utilisateur.

Cliquez sur "Nouvelle base de données", puis mettez comme nom de base de donnée "apiteachr" puis cliquez sur "Créer"

Cliquez ensuite sur "apiteachr" sur la geuche de votre fenetre de navigateur puis cliquez sur importer qui est sur le haut de votre fenetre cliquez sur "Parcourir..." puis choisissez le fichier "apiteachr.sql" qui est dans le projet.

---------------------------------------------------------------


téléchargez Symfony à l'aide de votre navigateur préféré, https://symfony.com/download

téléchargez Composer à l'aide de votre navigateur préféré https://getcomposer.org/download/

DURANT L'INSTALLATION : à partir du moment ou vous voyez "settings check", cliquez sur "browse" puis allez là ou vous avez installer WAMP ou XAMPP ou MAMP allez dans le dossier (le chemin change en fonction de WAMP/XAMPP/MAMP) WAMP / MAMP / XAMPP puis allez dans "bin" allez dans "php" puis dans "php 7.4.9" et cliquez sur "php" puis ouvrir cliquez ensuite sur next et finissez l'installation.

Une fois l'installation de composer terminé, appuyez sur votre touche windows puis tapez CMD et ouvrez l'invite de commande puis tapez la commande "composer" puis appuyez sur votre touche entrée pour vérifié si composer à été installer, s'il est bien installer, beaucoup de texte vont apparaître si vous remontez ce texte il y auras marqué COMPOSER.



---------------------------------------------------------

crée un nouveau dossier puis dans ce nouveau dossier, crée un nouveau projet symfony, pour cela il faut copiez le chemin de votre nouveau dossier et taper dans l'invite de commande "cd (collez le chemin vérifiez bien l'espace).

puis crée le nouveau projet symfony à l'aide de la commande à taper dans l'invite de commande "symfony new --full (votre nom de projet)" un nouveau projet seras alors crée dans votre dossier..

si vous avez un erreur "no PHP binaries detected unable" faites la commande "symfony local:php:refresh" puis retaper la commande "symfony new --full (votre nom de projet)" 
un nouveau projet seras alors crée dans votre dossier.

entrez dans votre projet puis allez dans le projet téléchargé puis allez dans le dossier "api" puis glissez tout les dossiers à part "public" de api vers votre projet.

si vous avez eu un mot de passe dans php my admin, allez dans votre projet puis ouvrez le fichier .env avec un éditeur de texte puis modifiez la ligne 27:
DATABASE_URL="mysql://root:@127.0.0.1:3306/apiteachr?serverVersion=5.7" par DATABASE_URL="mysql://root:root@127.0.0.1:3306/apiteachr?serverVersion=5.7"

entrez ensuite dans votre projet, copiez le chemin de votre projet puis ouvrez l'invite de commande et tapez la commande "cd (collez le chemin n'oubliez pas l'éspace entre cd et le chemin)" symfony puis démarrer ensuite le serveur à l'aide de la commande à tapez dans l'invite de commande "Symfony server:start" (NE TOUCHEZ PLUS A L'INVITE DE COMMANDE).

SI VOUS AVEZ TOUCHEZ A L'INVITE DE COMMANDE : faites dans votre invite de commande "Symfony server:stop" puis refaire la commande "Symfony server:start"

Vous avez eu un url dans votre invite de commande qui est surement (http://127.0.0.1:8000  verifier dans votre invite de commande) copiez cet url et collez le dans votre navigateur préféré pour voir si le serveur a bien été lancé vous aurez un onglet google avec welcome to symfony.

-------------------------------------------------------

Ouvrez postman

cliquez sur passer (en bas de votre fenetre postman)

au milieu de la page, cliquez sur le petit + à coté de l'onglet "overview"

Vous pouvez ensuite regardez les différentes méthodes à l'aide de Postman par exemple en tapant les url suivants (noubliez pas de changer la requete à gauche de l'url dans votre postman !):

GET :  http://127.0.0.1:8000/rest/teachr/ ou  (Votre ip de localhost)/rest/teachr/view/(une id que vous avez trouver dans le 1er lien)

POST :  http://127.0.0.1:8000/rest/teachr/new?prenom=(le prénom que vous voulez)   (IL SERAS AJOUTEZ AUTOMATIQUEMENT DANS VOTRE BASE DE DONNEE)

PUT :  http://127.0.0.1:8000/rest/teachr/edit/(l'id que vous souhaitez modifier)?prenom=(le nom que vous voulez)
