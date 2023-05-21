# Big World Setup FR (BWS-FR)

Cette application est une modification du [Big World Setup](<https://github.com/BigWorldSetup/BigWorldSetup>).  
Tout comme ce dernier, elle vous permet de télécharger, extraire et installer automatiquement des mods, tout en gérant les conflits, dépendances et ordres d'installation.

Cette version ne gère que des mods compatibles avec BG2 et BGT et possédant une traduction française. Quelques exceptions qui n'ont aucune conséquence sur les textes affichés sont toutefois gérées.

BGEE, BG2EE et EET ne seront PAS gérés.
Cependant, si une personne désire le faire, libre à elle de créer une pré-sélection et les fichiers ini associés.

## Pour commencer

1. [Télécharger](<https://github.com/Selphira/BigWorldSetupFR/archive/master.zip>) le Big World Setup FR.
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

#### Corrections de bugs
- Baldurdash v1.75
  - Erreur lors de la modification du fichier MAZZYP.DLG qui provoque une erreur de parsing du script (SetSetGlobal au lieu de SetGlobal)

- Big Picture v181
  - Corrections des entrées ajoutées dans le fichier stats.ids
  - Le composant "Rencontres sylvanesques" a besoin du sort CLERIC_ANIMATE_TREE, mais ce dernier n'était pas toujours installé pour lui.
  
- Generalized Biffing v2.5
  - La version 247 de Weidu provoque un crash au lancement du jeu. La version 246 est forcée lors de l'installation du mod.

- Item Upgrade v45
  - Des traductions manquantes dans le fichier itemupgrade/languages/french/lolwot.tra empêchaient le mod de s'installer en français.
  
- Lysre v1.2
  - L'installation échouait lors de l'ajout du kit.
  - Les fichiers audio n'étaient pas installés, car le fichier oggdec.exe était manquant

- Prêtre de Bhaal v1.2
  - Renommage de fichiers pour correspondre à ceux attendus par le script d'installation.
    - .\P!Bhaal\2da\P!Bhaal.2da en .\P!Bhaal\2da\PIBhaal.2da
    - .\P!Bhaal\2da\LUP!B.2da en .\P!Bhaal\2da\LUPIB.2da

- Stratagems v33.7
  - Correction d'une erreur de typo: **east_antimagic** en **easy_antimagic**
  - Correction d'une erreur où parfois, la variable **lev_max** était vide (pas certaine que ce soit la bonne façon de corriger).
  - Correction du [bug](<https://www.gibberlings3.net/forums/topic/31468-sword-coast-stratagems-v33-now-available/?do=findComment&comment=293929>) où les mages ne faisaient plus rien dans certaines conditions.

- Wheels of Prophecy v8.3
  - Mauvais chemin enregistré dans la variable **mod_root**
  
#### Corrections de compatibilité
- Area patcher
  - Les composants 5000 et 5001 se basaient sur le composant 15 de BG1NPC qui est devenu le 80.

- Ascension v2.0.15
  - Certaines orientations étaient écrites sous forme de lettre et non de chiffre.
  - Il modifiait le fichier action.ids pour gérer les orientations sous forme de lettre.
  
- BG1 NPCs at Beginning v3.0
  - Suppression des conditions relatives à BG1NPC qui empêchent d'installer certains composants. Les composants en question n'existent plus dans BG1NPC.
  
- Big Picture v181
  - Certaines orientations étaient écrites sous forme de lettre et non de chiffre. 
  
- Gerri's BGT NPC Portraits v3.0
  - Le composant "Portraits for BG1 Romantic Encounters" se basait sur le composant 0 de "BG1 Romantics Encounters" qui n'existe plus et remplacé par les composants 100 à 105.
  
- Hanna NPC v2.5
  - Correction d'une petite incompatibilité avec Infinity Animations
  
- Kiara-Zaiya NPCs v1.6.2
  - Le mod remplaçait plusieurs fichiers .ids par d'anciennes versions ne contenant pas toutes les entrées requises.
    Ce qui provoquait un crash juste après la création du personnage.
     
- Rogue Rebalancing v4.92
  - La description du Maître-lames, couplée au composant "4250 - Changer les sequenceurs de sorts et les contingences en capacites speciales" de Stratagems, générait une description de plus de 4096 caractères, ce qui faisait crasher le jeu lorsque l'on tentait de sélectionner ce kit.
    La description de la capacité "Démonstration Martiale" a été diminuée.
    
- Stratagems v33.7
  - Certaines orientations étaient écrites sous forme de lettre et non de chiffre. 
  - Il modifiait le fichier action.ids pour gérer les orientations sous forme de lettre.
  
#### Traductions et corrections d'orthographe

- Ascalons Questpack v4
  - Utilisation de la [version de travail](<https://github.com/Jazira33/AC_QUEST>) (non finalisée) de Jazira pour avoir la traduction française.

- Ascension v2.0.15
  - Traduction maison des nouvelles chaînes ajoutées par la 2.0, à l'exception des épilogues écrits par Shawne 

- BG2 Impoved GUI v3.12
  - Petite traduction maison
  
- Cerberus v1.06
  - Mini traduction maison des chaînes non traifiées.

- Check the bodies v3.0
  - Le fichier de traduction wsetup.tra était encodé en utf8 et non en ansi, générant des problèmes d'accent pour toute une partie du mod.

- Lysre v1.2
  - Corrections d'un grand nombre de fautes d'orthographe
  - Ajout des caractères accentués

- iiKeyNames v2
  - Petite traduction maison

- Mapnames v2
  - Ajout de la traduction française trouvée sur forum de [SpellholdStudio](<http://www.shsforums.net/topic/46634-sword-coast-map-labels/?p=545744>)

- Pretre de Mystra v1
  - Corrections d'orthographe

- Unique Artifact v7.2
  - Petite traduction maison