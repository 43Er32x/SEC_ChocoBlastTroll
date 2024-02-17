# Fonction pour vérifier le mouvement de la souris
function CheckMouseMovement {
    # Récupérer la position initiale du curseur
    $initialPosition = [System.Windows.Forms.Cursor]::Position

    # Attendre quelques secondes pour laisser l'utilisateur bouger la souris
    Start-Sleep -Seconds 5

    # Récupérer la nouvelle position du curseur
    $newPosition = [System.Windows.Forms.Cursor]::Position

    # Vérifier si les positions sont différentes
    if ($initialPosition -ne $newPosition) {
        # Si le curseur a bougé, verrouiller la session utilisateur
        rundll32.exe user32.dll,LockWorkStation
    }
}

# Boucle infinie pour vérifier le mouvement de la souris
while ($true) {
    CheckMouseMovement
    exit 0
}
