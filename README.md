**This application is now obsolete.**

# Big World Setup FR (BWS-FR)

Cette application est une modification du [Big World Setup](<https://github.com/BigWorldSetup/BigWorldSetup>).  
Tout comme ce dernier, elle vous permet de télécharger, extraire et installer automatiquement des mods, tout en gérant les conflits, dépendances et ordre d'installation.

Cette version ne gère que des mods compatibles avec BG2 et BGT et possédant une traduction française. Quelques exceptions qui n'ont aucune conséquence sur les textes affichés sont toutefois gérées.

BGEE, BG2EE et EET ne seront PAS gérés.
Cependant, si une personne désire le faire, libre à elle de créer une pré

## Pour commencer

1. [Télécharger](<https://github.com/Selphira/BigWorldSetup/archive/master.zip>) le Big World Setup FR.
2. L'extraire où vous voulez (mais pas dans le dossier du jeu !)
3. Fermer les jeux ouverts et les éditeurs de jeux pour éviter toute interférence avec le processus d'installation
4. Désactiver votre antivirus (uniquement pendant l'installation - n'oubliez pas de le réactiver après !)
5. Désactiver le contrôle des comptes d'utilisateur (UAC) (si vous ne le faites pas, l'installation automatisée peut se bloquer !)
6. Exécuter "BWS-FR.vbs" en double cliquant dessus.

## Le dossier "OverwriteFiles"
Parfois, vous devez écraser des fichiers de mod **APRÈS** leur extraction mais **AVANT** que "Big World Fixpack" n'applique ses corrections.  
Dans ce cas, vous pouvez placer tous les fichiers de mods personnalisés en utilisant exactement la même structure de dossiers.

Le BWS-FR s'en sert pour intégrer diverses [corrections](#corrections), ainsi que des fichiers .ini utilisés par certains mods pour pré-configurer leur installation.  
Vous pouvez les modifier pour ajuster certains paramètres des mods à votre convenance. 

Par exemple pour Stratagems (stratagems\stratagems.ini), mettez votre fichier personnalisé "stratagems.ini" dans le dossier "BWP\stratagems" et il sera utilisé lors de l'installation.

### <a name="corrections"></a>Corrections intégrées

J'invite les auteurs des mods originaux à récupérer ces correctifs pour les intégrer dans leur version officielle (si toutefois la correction leur convient).

\[C\]ompatibilité, \[F\]ixe, \[T\]raduction

- Area patcher
  - \[C\] Les composants 5000 et 5001 se basaient sur le composant 15 de BG1NPC qui est devenu le 80.

- Ascalons Questpack v4
  - \[T\] Utilisation de la [version de travail](<https://github.com/Jazira33/AC_QUEST>) (non finalisée) de Jazira pour avoir la traduction française.

- Ascension v2.0
  - \[C\] Certaines orientations étaient écrites sous forme de lettre et non de chiffre.
  - \[C\] Il modifiait le fichier action.ids pour gérer les orientations sous forme de lettre.

- Baldurdash v1.75
  - \[F\] Erreur lors de la modification du fichier MAZZYP.DLG qui provoque une erreur de parsing du script (SetSetGlobal au lieu de SetGlobal)

- BG1 NPCs at Beginning v3.0
  - \[C\] Suppression des conditions relatives à BG1NPC qui empêchent d'installer certains composants. Les composants en question n'existent plus dans BG1NPC.

- BG2 Impoved GUI v3.12
  - \[T\] Petite traduction maison

- Big Picture v181
  - \[C\] Certaines orientations étaient écrites sous forme de lettre et non de chiffre. 
  - \[F\] Corrections des entrées ajoutées dans le fichier stats.ids
  - \[F\] Le composant "Rencontres sylvanesques" a besoin du sort CLERIC_ANIMATE_TREE, mais ce dernier n'était pas toujours installé pour lui.

- Gerri's BGT NPC Portraits v3.0
  - \[C\] Le composant "Portraits for BG1 Romantic Encounters" se basait sur le composant 0 de "BG1 Romantics Encounters" qui n'existe plus et remplacé par les composants 100 à 105. 

- iiKeyNames v2
  - \[T\] Petite traduction maison

- Item Upgrade v45
  - \[F\] Des traductions manquantes dans le fichier itemupgrade/languages/french/lolwot.tra empêchaient le mod de s'installer en français.

- Kiara-Zaiya NPCs v1.6.2
  - \[C\] Le mod remplaçait plusieurs fichiers .ids par d'anciennes versions ne contenant pas toutes les entrées requises.
     Ce qui provoquait un crash juste après la création du personnage.

- Mapnames v2
  - \[T\] Ajout de la traduction française trouvée sur forum de [SpellholdStudio](<http://www.shsforums.net/topic/46634-sword-coast-map-labels/?p=545744>)

- Prêtre de Bhaal v1.2
  - \[F\] Renommage de fichiers pour correspondre à ceux attendus par le script.
    - .\P!Bhaal\2da\P!Bhaal.2da en .\P!Bhaal\2da\PIBhaal.2da
    - .\P!Bhaal\2da\LUP!B.2da en .\P!Bhaal\2da\LUPIB.2da

- Stratagems v33.7
  - \[C\] Certaines orientations étaient écrites sous forme de lettre et non de chiffre. 
  - \[C\] Il modifiait le fichier action.ids pour gérer les orientations sous forme de lettre.
  - \[F\] Correction d'une erreur de typo: **east_antimagic** en **easy_antimagic**
  - \[F\] Correction d'une erreur où parfois, la variable **lev_max** était vide (pas certaine que ce soit la bonne façon de corriger).

- Unique Artifact v7.2
  - \[T\] Petite traduction maison

- Wheels of Prophecy v8.3
  - \[F\] Mauvais chemin enregistré dans la variable **mod_root**