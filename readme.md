Change Directory Alias
======================

# Instalation

Execute these commands:

```
git clone http://github.com/JCombee/cda
cd cda
./build.sh
```

When the above commands are executed successfully you need to place the "build/cda.sh" on a location where you want to store it. You could choose to keep it right where it is so you are able to update cda by pulling from the repository. There is no need to have it in the paths folder since of its functionality it is not able to be used without an alias.

After you decided where to store cda.sh we need to create an alias for it in a bashrc file. You could choose to place it in the .bashrc file in your homedir but when you switch to (for instance) your super user it will lose the alias. It is adivesed to place it in the "/etc/bash.bashrc".

You should add this at the end of the bashrc file:

```
. /path/to/cda.sh load
```

Replace "/path/to/cda.sh" with the correct path and you should be good to go.

# Settings

## CDA_LOCATION (not yet implemented)

When you use cda it will automaticly add a file to store in all aliases.
Default it will be put in the ~/.cda_list location but it can be changed by setting the environment variable "CDA_LOCATION" to the filename and location you prefer.

# Commands

## Help (not yet implemented)

```
cda help [COMMAND]
```

## Alias

```
cda [ALIAS]
```

## List

```
cda list
```

## Set

```
cda set ALIAS LOCATION
```

## Unset (not yet implemented)

```
cda unset ALIAS
```

## Rename (not yet implemented)

```
cda rename ALIAS NEW_ALIAS
```

## Shortlist

```
cda shortlist
```
