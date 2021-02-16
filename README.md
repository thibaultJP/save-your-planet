# save-your-planet
 
# Explication de la structure (juste là pour expliquer. il faudra le remettre en forme voir le supprimer plus tard)

dossier android / ios / test -> permettent de faire marcher le code sur les différent OS ON NE TOUCHE PAS !!!

dossier lib -> là où est notre appli.
    dossier assets -> comprend des dossiers images, fonts... c'est là ou sont stockées nos images, et autres fichiers css. à redecomposer si besoin

    dossier routes -> contient les fichier permettant la navigation entre les pages. (voir package fluro). permet aussi de gerer si un utilisateur est co ou pas.

    dossier utils -> contient les fonctions utilisés dans toute l'application/commune à plusieurs pages (pour éviter d'avoir à les réécrire plusieurs fois)

    dossier widget -> contient les widgets personnalisé (si on en a)

    dossier services -> contient tout ce qui touche à la bdd

    dossier constants -> sert à stocker toute les valeurs statique de notre application (texte, nom de variable...). ça nous évite d'avoir a fouiller tout le code pour pouvoire les changer

    dossier screens/pages -> contient les page de notre app. peut être décomposé en dossier si on veut séparer les fonctionnalité de chaque page (ex dossier auth qui contient les différente pages de l'ecran de connexion -> connexion, mot de passe oublié...)





