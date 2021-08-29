
LE PROJET NE MARCHE PAS SOUS XAMPP

Téléchargez le projet puis extrayez le

Installez git à l'aide de votre navigateur préféré https://git-scm.com/download/win

Télécharger Postman à l'aide de votre navigateur préféré https://getcomposer.org/download/

----------------------------------------------------
Téléchargez WAMP ou MAMP à l'aide de votre navigateur préféré, https://sourceforge.net/projects/wampserver/files/

Personnellement j'utilise WAMP, si vous n'avez jamais utiliser WAMP/MAMP je vous conseil d'installer WAMP pour suivre le tutoriel ci-dessous

Lors de l'installation ils vous proposeront de changer de navigateur, choisissez celui que vous préférez.

Appuyez sur votre touche Windows de votre clavier puis tapez Wamp et ouvrez-le en administrateur (il vous proposera de le faire tout seul lors de l'ouverture)

Cliquez sur la flèche vers le haut en bas à droite de votre écran et vous verrez un icone de W coloré, s'il est vert au bout de quelques secondes c'est que l'installation s'est 
bien déroulé s’il est jaune ou rouge réessayer de l'installer et si cela ne fonctionne pas regardez sur internet pour votre problème.

Cliquez gauche sur l'icone de W vert puis cliquez sur phpMyAdmin, une fenêtre de votre navigateur préféré s'ouvriras avec un utilisateur et un mot de passe.

Pour le nom d'utilisateur mettez "root" et pour le mot de passe, vous le laisserez vide.

Cliquez sur "Exécuter", une nouvelle page apparaîtra. Si la page n’a pas changé mettez "root" en mot de passe avec "root" en utilisateur.

Cliquez sur "Nouvelle base de données", puis mettez comme nom de base de données "apiteachr" puis cliquez sur "Créer"

Cliquez ensuite sur "apiteachr" sur la gauche de votre fenêtre de navigateur puis cliquez sur importer qui est sur le haut de votre fenêtre cliquez sur "Parcourir..." puis 

choisissez le fichier "apiteachr.sql" qui est dans le projet.

---------------------------------------------------------------


Téléchargez Symfony à l'aide de votre navigateur préféré, https://symfony.com/download

Téléchargez Composer à l'aide de votre navigateur préféré https://getcomposer.org/download/

DURANT L'INSTALLATION : à partir du moment où vous voyez "settings check", cliquez sur "browse" puis allez là ou vous avez installer WAMP ou MAMP allez dans le dossier (le chemin
change en fonction de WAMP/MAMP) WAMP / MAMP puis allez dans "bin" allez dans "PHP" puis dans "PHP 7.4.9" et cliquez sur "PHP" puis ouvrir cliquez ensuite sur Next et finissez l'installation.

Une fois l'installation de composer terminer, appuyez sur votre touche Windows puis tapez CMD et ouvrez l'invite de commande puis tapez la commande "composer" puis appuyez sur votre touche entrée pour vérifier si composer à été installer, s'il est bien installé, beaucoup de texte vont apparaître si vous remontez ce texte il y aura marqué COMPOSER.

---------------------------------------------------------

Crée un nouveau dossier puis dans ce nouveau dossier, crée un nouveau projet Symfony, pour cela il faut copiez le chemin de votre nouveau dossier et taper dans l'invite de commande "cd (collez le chemin vérifiez bien l'espace).

Puis crée le nouveau projet Symfony à l'aide de la commande à taper dans l'invite de commande "Symfony new --full (votre nom de projet)" un nouveau projet seras alors crée dans votre dossier.

Si vous avez un erreur "no PHP binaries detected unable" faites la commande "symfony local:php:refresh" puis retaper la commande "Symfony new --full (votre nom de projet)" un nouveau projet seras alors crée dans votre dossier.

Entrez dans votre projet puis allez dans le projet téléchargé puis allez dans le dossier "api" puis glissez tous les dossiers à part "public" de api vers votre projet.

Si vous avez eu un mot de passe dans phpMyAdmin, allez dans votre projet puis ouvrez le fichier  .env avec un éditeur de texte puis modifiez la ligne 27: 

DATABASE_URL="mysql://root:@127.0.0.1:3306/apiteachr?serverVersion=5.7" par DATABASE_URL="mysql://root:root@127.0.0.1:3306/apiteachr?serverVersion=5.7"

Entrez ensuite dans votre projet, copiez le chemin de votre projet puis ouvrez l'invite de commande et tapez la commande "cd (collez le chemin n'oubliez pas l'espace entre cd et le chemin)" Symfony puis démarrer ensuite le serveur à l'aide de la commande à tapez dans l'invite de commande "Symfony server:start" (NE TOUCHEZ PLUS A L'INVITE DE COMMANDE).

SI VOUS AVEZ TOUCHEZ A L'INVITE DE COMMANDE : faites dans votre invite de commande "Symfony server:stop" puis refaire la commande "Symfony server:start"

Vous avez eu une url dans votre invite de commande qui est surement (http://127.0.0.1:8000 verifier dans votre invite de commande) copiez cet url et collez le dans votre navigateur préféré pour voir si le serveur a bien été lancé vous aurez un onglet google avec welcome to symfony.

-------------------------------------------------------

Ouvrez Postman

S'il vous propose de vous connecter cliquez sur passer (en bas de votre fenêtre Postman)

Au milieu de la page, cliquez sur le petit + à coté de l'onglet "overview"

Vous pouvez ensuite regardez les différentes méthodes à l'aide de Postman par exemple en tapant les url suivants (n’oubliez pas de changer la requête à gauche de l'url dans votre Postman !):

GET : http://127.0.0.1:8000/rest/teachr/ ou (Votre ip de localhost)/rest/teachr/view/(une id que vous avez trouver dans le 1er lien)

POST : http://127.0.0.1:8000/rest/teachr/new?prenom=(le prénom que vous voulez) (IL SERA AJOUTEZ AUTOMATIQUEMENT DANS VOTRE BASE DE DONNEE)

PUT : http://127.0.0.1:8000/rest/teachr/edit/(l'id que vous souhaitez modifier)?prenom=(le nom que vous voulez)

