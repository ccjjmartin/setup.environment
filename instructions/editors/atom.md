Code Editing
============

NOTE: I no longer use atom, I loved using it for a long time but now recommend
developers use VSCode.  Thanks for all the fish!

Atom
----
- Good for reviewing file history with git-time-machine
- Good for GitHub.com markdown previewing
- Good for code linting

Atom Packages
-------------
- For any of the packages below you can type `apm install {package_name}`:
- autocomplete-php (add autocomplete php support)
- git-time-machine (History of a particular file)
- linter (a tool for code linting)
- linter-phpcs (a PHP language specific linter)
- linter-eslint (a JS language specific linter)
- linter-stylelint (a CSS language specific linter)
- minimap (preview of your file's entire source code)
- minimap-linter (a preview of code linting)
- term3 (command line shell within Atom)
- atom-beautify (automatically fix code mistakes for you)
- multi-wrap-guide (add multiple wrap guides at different column widths)
- react (JSX plugin)
- atom-phpunit (PHPUnit Testing)
- php-debug (XDebug)
- git-blame (Shows who made the last commit line by line in a file)
- goto-definition (Shows source code definition)
- teletype (Allows collaboration of writing code)

(If using React.js)
- js-hyperclick (lets you jump to where variables are defined)
- language-JSX (Adds syntax highlighting and snippets to JSX file in Atom)
- language-babel (Language grammar for all versions of JavaScript including ES2016 and ESNext, JSX syntax)
- language-graphql (Atom syntax highlighting for GraphQL, ported from language-babel.)
- react-snippets (An Atom snippet library for React)

Atom Settings
-------------
- To change the settings below open menu item Atom > Preferences > Packages
- mardown-preview > "Use GitHub.com style" > checked
- autocomplete-plus > Keymap For Confirming a Suggestion > "tab" only.
- bracket-matcher > autocomplete smart quotes > unchecked
- linter-phpcs > Code Standards or Config File > "Drupal"
- linter-stylelint > Uncheck "Disable when no config file is found"
- linter-stylelint > Check "Use standard"
- NOTE: The linter does not run on file open, start typing or save the file.
- atom-beautify > CoffeeScript > Indent Size > 2
- atom-beautify > PHP > Default Beautifier > "PHPCBF"
- atom-beautify > PHP > PHPCBF Standard > "Drupal"
- multi-wrap-guide > Vertical Guide Wrap Positions > "80, 92"
- multi-wrap-guide > Lock Guides > checked

Atom Command Line
-----------------
- On my install it looks like the atom command was possible out of the box
although it is possible that one of the packages above created the command:
- `atom`
- `atom .` will open the current directory in atom.
- You can check your `/usr/local/bin` directory for a symlink called atom
- If it isn't there run:
- `ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom`
