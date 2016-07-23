#!/bin/bash
for module in $(cat modules.conf | grep modules); do
	if [[ $module != "*modules: *" ]]; then
		$($module)
	fi
done
