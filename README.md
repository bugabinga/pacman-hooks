# Pacman Hooks

Set of hooks into pacman for my Arch Linux machines.

## check-broken-packages

Check that existing packages still have needed dynamic libraries after an
upgrade. Packages tend to break when installing/uninstalling packages from AUR a
lot.

This hook is taken from
[desbma/pacman-hooks](https://github.com/desbma/pacman-hooks).

## deleted-files

Check which running processes still access files, that were updated/deleted.
That typically suggests, that the process should be restartet.

This hook is taken from [mar04/lgc-hooks](https://github.com/mar04/lgc-hooks).

## linux-reboot-reminder

Prints a reminder, that a reboot is in order when the kernel was updated. I
believe this is necessary to ensure that updated modules are loaded (??? TODO:
seek truth).

This hook is taken from
[allgoewer/pacman-hooks](https://github.com/allgoewer/pacman-hooks).

## pacdiff

Prints the differences in new configuration files with `pacdiff`. Needs the
package `pacman-contrib` to work.

This hook is taken from
[desbma/pacman-hooks](https://github.com/desbma/pacman-hooks).

## reflector

Update the list of repoistory mirrors when the official list of mirrors changed.
