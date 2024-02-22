#-------------------------------------------------#
               GIT LECON                          
#-------------------------------------------------#


#-------------------------------------------------#
             CONFIGURATION
#-------------------------------------------------#
               
# Affiche la version de GIT installée sur le système 
git version | git - v

# Configure le nom de l'utilisateur et son email (obligatoire)                
git config --global user.email "johnny@email.com"
git config --global user.name "johnny"

# Configure GIT pour qu'il colore la sortie de la console .(console = terminal )
git config --global color.ui true ("ui = user interface")

# Ouvrir le fichier de configuration global de GIT .
git config --global --edit 

# Configurer l'editeur de texte par defaut utilisé par GIT sur windows.
git config --global core.edit "code --wait"

#-----------------INITIALISATION---------------------------#

# initialiser , ca creer un dossier cacher git pour y stocker le contenu
git init

# Afficher l'etat du fichier 
git status

#--------------------COMMIT--------------------------#

# Ajoute un ou des fichiers modifiés a la staging area pour préparer un commit 
git add nom_du_fichier | git add.

# Enregistre les modifications presente dans le staging area en creant un nouveau commit avec le message specifié 
git commit -m "first commit"

# Modifier le dernier commit 
git commit --amend -m "modification du h1 et du h2"

#Affiche l'historique des commits 
git log 
git log --oneline ('afficher les id raccourci a 8chiffres')

#Afficher le nom de la branch
git branch

# Permet  de se deplacer vers un commit specifique en utilisant son indentifiant 
git checkout id_commit

#Permet de revenir au dernier commit 
git checkout nom_de_branche

# creer une nouvelle branche 
git branch nom_de_la_branch

# Changer de branche 
git switch 

# recuperer les  modifications de la branch specifié sur la branche actuelle 
git merge nom_de_la_branch2

# Renomme la branch actuelle avec le nouveau nom(ce placer sur la branche a renommer)
git branch -m nouveau_nom

#Supprime la branch specifique 
git branch -d nom_branche


#--------------------------------------------------------------#
#                 RESTORES
#--------------------------------------------------------------3

# Restaure le fichier à l'etat du dernier commit 
git restore nom_du_fichier

# Supprime le fichier de la staging area(git add.) le retirer de la preparation pour le commit .
git restore --staged nom_fichier

# Creer un nouveau commit à partir du commit spécifié
git revert id_commit