Visual Studio Code
==================
- Fast
- Good for code linting
- Git integrations

VS Code Packages
----------------

Bring up the Extensions view by clicking on the Extensions icon in the Activity Bar on the side of VS Code or the View: Extensions command (⇧⌘X).

First enabled terminal `code` command by opening the Command Palette (⇧⌘P) and typing 'shell command'. Click on `Shell Command: Install 'code' in path` command.

Then, for any package, you can type `code --install-extension {package_name}`

- dzannotti.vscode-babel-coloring (Adds JS Babel es6/es7 syntax coloring)
- PeterJausovec.vscode-docker (Adds syntax highlighting, etc. for Dockerfile and docker-compose files.)
- dssiqueira.drupal-8-snippets (Drupal 8 Snippets)
- marcostazi.vs-code-drupal (Drupal 7/8 Syntax Highlighting)
- pauloamgomes.drupal7-hooks-snippets (Drupal 7 Hook Snippets)
- juniormucciolo.drupal-7-snippets (More Drupla 7 Hook Snippets)
- dbaeumer.vscode-eslint (ESLint)
    - Will need to install eslint to use ( `npm install -g eslint` )
- flowtype.flow-for-vscode (Flow Language Support)
- Orta.vscode-jest (Facebook's JEST Snippets. JavaScript Testing)
- donjayamanne.python (Bunch of Python Goodies)
- timothymclane.react-redux-es6-snippets (React / Redux ES6 Snippets)
- eg2.tslint (TypeScript Linting)
    - Will need to install tslint to use ( 'npm install -g tslint' )
- igorming.useful-react-snippets (Useful React Snippets)


VS Code Settings
-------------
The settings are configured via 'Settings' and are maintained via JSON.
To override, just click on the pencil icon next to the code-to-be-overwritten and select 'Replace in settings'. This adds a line to the custom settings JSON on the right.

**Example**
```
{
    "workbench.colorTheme": "Solarized Dark",
    "workbench.startupEditor": "newUntitledFile",
    "editor.fontFamily": "Menlo, Monaco, 'Courier New', monospace",
    "editor.wordWrap": "on",
    "html.format.wrapLineLength": 80,
    "editor.tabSize": 2
}
```
