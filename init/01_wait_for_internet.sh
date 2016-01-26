#!/bin/bash

((count = 1000))
while [[ $count -ne 0 ]] ; do
    ping -c 1 8.8.8.8
    rc=$?
    if [[ $rc -eq 0 ]] ; then
        ((count = 1))
    fi
    ((count = count - 1))
done

exit $rc
