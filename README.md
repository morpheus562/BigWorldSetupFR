[![Github Releases](https://img.shields.io/github/v/release/Selphira/BigWorldSetupFR)](https://github.com/Selphira/BigWorldSetupFR/releases/latest)
![Langues](https://img.shields.io/static/v1?label=Langues&message=Français&color=limegreen)
![Jeux supportés](https://img.shields.io/static/v1?label=Jeux%20supportés&message=BGT%20%7C%20EET&color=dodgerblue)

# Big World Setup FR (BWS-FR)

Cette application est une modification du [Big World Setup](<https://github.com/BigWorldSetup/BigWorldSetup>).  
Tout comme ce dernier, elle vous permet de télécharger, extraire et installer automatiquement des mods, tout en gérant les conflits, dépendances et ordres d'installation.

Cette version ne gère que des mods compatibles avec BGT et EET possédant une traduction française. Quelques exceptions qui n'ont aucune conséquence sur les textes affichés sont toutefois tolérées.

## Pour commencer

1. [Télécharger](<https://github.com/Selphira/BigWorldSetupFR/archive/master.zip>) le Big World Setup FR.
2. L'extraire où vous voulez (mais pas dans le dossier du jeu !)
3. Fermer les jeux ouverts et les éditeurs de jeux pour éviter toute interférence avec le processus d'installation
4. Désactiver votre antivirus (uniquement pendant l'installation - n'oubliez pas de le réactiver après !)
5. Désactiver le contrôle des comptes d'utilisateur (UAC) (si vous ne le faites pas, l'installation automatisée peut se bloquer !)
6. Exécuter "BWS-FR.vbs" en double cliquant dessus.

## Mettre à jour l'application

Afin de vous assurer de toujours exécuter la version la plus récente, il suffit d'exécuter le fichier "BWS-FR update.vbs".  

## Le dossier "OverwriteFiles"
Parfois, vous devez écraser des fichiers de mod **APRÈS** leur extraction mais **AVANT** que "Big World Fixpack" n'applique ses corrections.  
Dans ce cas, vous pouvez placer tous les fichiers de mods personnalisés en utilisant exactement la même structure de dossiers.

Le BWS-FR s'en sert pour intégrer diverses [corrections](#corrections), ainsi que des fichiers .ini utilisés par certains mods pour pré-configurer leur installation.  
Vous pouvez les modifier pour ajuster certains paramètres des mods à votre convenance. 

Par exemple pour Stratagems (stratagems\stratagems.ini), mettez votre fichier personnalisé "stratagems.ini" dans le dossier "BWP\stratagems" et il sera utilisé lors de l'installation.

### <a name="corrections"></a>Corrections intégrées

J'invite les auteurs des mods originaux à récupérer ces correctifs pour les intégrer dans leur version officielle (si toutefois la correction leur convient).

#### Pour EET

Les correctifs spécifiques à la version EET se trouvent dans un dépôt à part : [BWS-FR Fixpack](<https://github.com/Selphira/BWS-FR-Fixpack>)

#### Pour BGT

Les correctifs spécifiques à la version BGT sont directement incluses dans ce dépôt.

##### Corrections de bugs
- Baldurdash v1.75
  - Erreur lors de la modification du fichier MAZZYP.DLG qui provoque une erreur de parsing du script (SetSetGlobal au lieu de SetGlobal)

- Big Picture v181
  - Corrections des entrées ajoutées dans le fichier stats.ids
  - Le composant "Rencontres sylvanesques" a besoin du sort CLERIC_ANIMATE_TREE, mais ce dernier n'était pas toujours installé pour lui.
  
- Generalized Biffing v2.5
  - La version 247 de Weidu provoque un crash au lancement du jeu. La version 246 est forcée lors de l'installation du mod.

- Item Revision v4 beta 10
  - Dans certains cas, si une armure possédait déjà de la résistance à un dégât physique, cette dernière était augmentée du double que prévu.
    Ex: DWCHAN02, DWPLAT01, ISHCHA

- Item Upgrade v45
  - Des traductions manquantes dans le fichier itemupgrade/languages/french/lolwot.tra empêchaient le mod de s'installer en français.
  
- Lolfixer
  - Correction d'un problème qui génère des effets invalides avec l'opcode 177.
  
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
  
##### Corrections de compatibilité
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
  
##### Traductions et corrections d'orthographe

- Ascalons Questpack v4
  - Utilisation de la [version de travail](<https://github.com/Jazira33/AC_QUEST>) (non finalisée) de Jazira pour avoir la traduction française.  
    Traduction et relecture effectuées par : [Deratiseur](https://www.baldursgateworld.fr/lacouronne/members/deratiseur.html), [Tonton-thon](https://www.baldursgateworld.fr/lacouronne/members/tonton-thon.html) et [Jazira](https://www.baldursgateworld.fr/lacouronne/members/jazira.html).

- Ascension v2.0.15
  - Traduction maison des nouvelles chaînes ajoutées par la 2.0, à l'exception des épilogues écrits par Shawne.

- BG2 Impoved GUI v3.16
  - Petite traduction maison, relue et corrigée par [Freedy Gwendo](https://www.baldursgateworld.fr/lacouronne/members/freddy_gwendo.html).
  
- Cerberus v1.06
  - Mini traduction maison des chaînes non traifiées.

- Check the bodies v3.0
  - Le fichier de traduction wsetup.tra était encodé en utf8 et non en ansi, générant des problèmes d'accent pour toute une partie du mod.

- CorrectfrBG2
  - Ajout des correctifs du 17.10.16 effectués par [Freedy Gwendo](https://www.baldursgateworld.fr/lacouronne/members/freddy_gwendo.html)

- Lysre v1.2
  - Corrections d'un grand nombre de fautes d'orthographe.
  - Ajout des caractères accentués.

- iiKeyNames v2
  - Petite traduction maison.

- Item Revision v4 beta 10
  - Le mod vérifie si le composant "Services etendus des temples" de atweaks est installé, mais le numéro du composant est incorrect (600 au lieu de 510).

- Mapnames v2
  - Ajout de la traduction française trouvée sur forum de [SpellholdStudio](<http://www.shsforums.net/topic/46634-sword-coast-map-labels/?p=545744>).

- Patch correctif des textes pour Baldur's Gate 2 (et ToB) v1.3
  - Ajout des correctifs du 16/10/2017 réalisés par [Freedy Gwendo](https://www.baldursgateworld.fr/lacouronne/members/freddy_gwendo.html) disponibles [ici](https://www.baldursgateworld.fr/lacouronne/la-correct-zone/14167-erreurs-corriger-pour-baldur-s-gate-2-a-24.html#post443274).

- Pretre de Mystra v1
  - Corrections d'orthographe.
  
- Stratagems v33.7
  - Mise à jour de la traduction par [Jazira](https://www.baldursgateworld.fr/lacouronne/members/jazira.html).
  
- Tangled Oak Isle v2.20
  - Le fichier de traduction items.tra était encodé en utf8 et non en ansi, générant des problèmes d'accent pour toute une partie du mod.

- Unique Artifact v7.2
  - Petite traduction maison, relue et corrigée par [Freedy Gwendo](https://www.baldursgateworld.fr/lacouronne/members/freddy_gwendo.html).

## Informations techniques

### Les types de mod
Le type général d'un mod renseigné dans son fichier ini permet de savoir dans quelle sélection automatique ils seront présent.
Il est possible de définir plusieurs types pour un mod, cela permettra de le faire apparaitre dans plusieurs sélections
automatique. (Ex: Type=F,R,S,T,E)
  
F : [F]ixe (Mods essentiels, ils ne pourront pas être désélectionnés)  
R : [R]ecommandé (Mods au contenu de haute qualité et bien intégré)  
S : Maximi[S]é (Mods de toutes qualités, excluant les contenus les plus difficiles)  
T : [T]actique (Mods de toutes qualités, incluant les contenus les plus difficiles)  
E : [E]xpert (Mods présentant des problèmes connus, pour le débogage)

Note : Pour le type Fixe, il est possible de faire en sorte que certains commposants ne soient pas fixés. Pour se faire,
il suffit d'ajouter l'option "NotFixed" dans la section [Mod] du fichier ini du mod concerné (Ex: NotFixed=1 2 10)

### Les  lignes d'installation

Un ligne du fichier InstallOrder.ini est composée de différentes sections

[LineType];[SetupName];[ComponentNumber];[Theme];[Defaults];[CompReq]  

LineType : Le type de la ligne d'installation  
SetupName : Le nom du mod à installer  
ComponentNumber : Le numéro du composant à installer  
Theme : La catégorie dans laquelle se trouve le composant  
Defaults : Les valeurs défaut pour correspondant respectivement aux types RSTE. Cela permet de pouvoir placer un
composant particulier dans une sélection différente du type général du mod.  
CompReq : ???

#### Les types de ligne d'installation

ANN : Un commentaire  
CMD : Une commande shell à exécuter  
DWN : Téléchargement d'un mod  
STD : Installation d'un composant  
MUC : Liste de choix de plusieurs composants différents, un seul peut être sélectionné    
SUB : Liste de choix pour un même composant, généralement car le composant nécessite une entrée manuelle, un seul peut être sélectionné
GRP : Permet d'installer plusieurs composants en une seule commande

#### Les catégories de ligne d'installation
00 : Général  
01 : Corrections  
02 : Gros mods: BG1  
03 : Quêtes: BG1  
04 : PNJs: BG1  
05 : Relatif aux PNJs: BG1  
06 : Rencontres tactiques: BG1  
07 : Règles et ajustements: BG1  
08 : Magasins et objets: BG1  
09 : Gros mods: BG2  
10 : Quêtes: BG2  
11 : Mini-Mods  
12 : PNJs: BG2  
13 : Petits PNJs: BG2  
14 : Relatif aux PNJs: BG2  
15 : Rencontres tactiques: BG2  
16 : Règles, ajustements et sorts: BG2  
17 : Magasins et objets: BG2  
18 : Intelligence artificielle  
19 : Kits  
20 : Interface  
21 : Graphisme, portraits et sons