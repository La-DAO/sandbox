## Este repositorio contiene solo código experimental: no lo use en produccion.
El proposito de este repositorio es para practicar y aprender.

Este repositorio usa classic yarn v1.22.15 [workspaces] (https://classic.yarnpkg.com/en/docs/workspaces).

### Requisitos
1. Debe tener instalado y saber como usar `node.js`. Version >=16.0.0 
2. Deber tener `yarn` instalado. Version "classic" >=1.22.19
2. Debe tener git instalado y saber como usarlo. 
3. Clonar este repositorio en un directorio nuevo:
> git clone https://github.com/La-DAO/sandbox

### Como iniciar un nuevo experimento
1. Para crear un nuevo experimento, cree un nuevo "branch".
> git branch <your-name>/<experiment-description> 
2. En sste "branch" debería crear un nuevo "workspace" simplemente creando una nuevo folder en `packages/*`.
3. Asigne un nombre al nuevo folder siguiendo la convención de nomenclatura: `00X_your_experiment`.
4. Por cortesía, agregue en su nueva carpeta un archivo `README.md` que explique el propósito de su experimento.
5. Cuando se complete el experimento. Indique su conclusión en `README.md` y haga git merge el "branch" con "main".

### Como hacer commit messages?
Queremos establecer reglas sobre cómo  formatear nuestros mensajes de "commit" de git. Esto hace que el historial de mensajes sea mas legible. Consulte la convencion [aquí] (https://www.conventionalcommits.org/en/v1.0.0/#summary). Por convencion, los mensajes de "commit" se haran en ingles y seguiran el siguiente patron:

```
type(scope?): subject  #scope is optional; multiple scopes are supported (current delimiter options: "/", "\" and ",")
```


***

## This repository contains only experimental code: do not use in production.
The purpose of this repository is to practice and learn.
Do not use it in production.

This repository uses classic yarn v1.22.15 [workspaces](https://classic.yarnpkg.com/en/docs/workspaces).

### Requirements
1. `node.js` installed and know how to use it. Version >16.0.0 
2. `yarn` installed. Classic version >=1.22.19
2. `git` installed and know how to use it. 
3. Clone this repository in a new directory:
> git clone https://github.com/La-DAO/sandbox

### Set up a new Experiment
1. To create a new experiment start by creating a new branch.
> git branch <your-name>/<experiment-description> 
2. This branch should create a new workspace by simply creating a new folder in `packages/*`. 
3. Name your folder following naming convention: `00X_your_experiment`.
4. For courtesy add in your new folder a `README.md` file explaining the purpose of your experiment.
5. When experiment is complete. Indicate your conclusion in `README.md` and merge branch to main.

### Commit messages
We want to establish rules over how our git commit messages can be formatted. This leads to more readable messages that are easy to follow when looking through the project history. Check conventions [here](https://www.conventionalcommits.org/en/v1.0.0/#summary). In general the pattern mostly looks like this:

```
type(scope?): subject  #scope is optional; multiple scopes are supported (current delimiter options: "/", "\" and ",")
```