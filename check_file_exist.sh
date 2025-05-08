#!/bin/bash

# Demander à l'utilisateur le nom du fichier
echo -n "Entrez le nom du fichier à rechercher : "
read nom_fichier

# Vérifier si le fichier existe dans le répertoire courant
if [ -f "$nom_fichier" ]; then
    echo "Le fichier '$nom_fichier' existe."
else
    echo "Le fichier '$nom_fichier' n'existe pas."
fi
