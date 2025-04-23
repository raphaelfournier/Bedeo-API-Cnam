# API Bédéo du CNAM

## Technos

- un notebook Jupyter en Python
- un rendu vers un site Web avec [Jekyll][https://jekyllrb.com/], un peu de CSS/Javascript

## Démarrer 

````
# pour Jupyter
python -m venv _venv && source _venv/bin/activate
pip install -r requirements.txt

# ici, on peut lancer le notebook et l'exécuter

# pour Jekyll
bundle install

# éventuellement :
cp _data/master-blocks.exemple.yaml _data/master-blocks.yaml

# ensuite :
make html
make serve
````

## Usage

La production de la page se passe donc ainsi :

- le notebook extrait les données relatives aux UE du master, avec une
  hiérarchie préservant la structure des années, écrivant le résultat en yaml
  dans un sous-dossier _data de l'arborescence Jekyll

- *pour avoir la maquette prévue*, il faut modifier le fichier
  `_data/master.yaml` en `_data/master-blocks.yaml`, pour ajouter un niveau
  hiérarchique supplémentaire, les "blocs". Voir l'exemple dans le fichier
  `_data/master-blocks.exemple.yaml` (ça permet d'afficher les regroupements
  d'UE optionnelles, et c'est peu automatisable)

- à la compilation, Jekyll réutilise ces informations et génère la page avec le
  layout pré-défini, et incorpore le css et le javascript.
