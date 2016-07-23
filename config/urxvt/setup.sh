#!/bin/bash

# urxvtc alias setup
echo ------ urxvtc setup ------
if [[ $(cat /etc/profile.d/00-aliases.sh) == *"urxvtd -q"* ]] ; then
	echo "Alias already exists, skipping"
else
	echo "Creating file"
	echo -e "alias urxvtc=\'urxvtc \"$@\" if [ $? -eq 2 ]; then urxvtd -q -o -f vrxvtc \"$@\" fi\'" >> /etc/profile.d/00-aliases.sh
	chmod 711 /etc/profile.d/00-aliases.sh
fi
echo -e "Done.\n"
