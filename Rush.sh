#!/bin/bash

# Création du fichier de score
touch score.txt
echo "Score: 0" > score.txt
echo "Bienvenue dans le quiz Bash !"
echo "Essayez de répondre correctement."

# Définition du nombre de tentatives
tentatives=2

# Début du quiz
while [[ $tentatives -gt 0 ]]; do
    echo "Quelle commande permet de lister les fichiers ?"
    read reponse

    if [[ $reponse == "ls" ]]; then
        echo "Bonne réponse !"
        score=$(cat score.txt | awk '{print $2}')
        score=$((score + 1))
        echo "Score: $score" > score.txt
            echo "$(cat score.txt)" 
        exit 0
    else
        tentatives=$((tentatives - 1))  # Réduction des tentatives
        echo "Mauvaise réponse... Il vous reste $tentatives essai(s)."
    fi
done

# Dernière chance après épuisement des tentatives
echo "Une dernière chance ! Quelle commande affiche le répertoire actuel ?"
read reponse

if [[ $reponse == "pwd" ]]; then
    echo "Bravo ! Vous avez réussi."
    echo "$(cat score.txt)" 
else
    echo "Dommage... Vous avez perdu !"
fi

# Affichage du score final
cat score.txt
