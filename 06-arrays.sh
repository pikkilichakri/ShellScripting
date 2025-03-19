#!/bin/bash

# Arrays store multiple values under a single variable. 
# Elements in an array are accessed using index numbers (starting from 0).

MOVIES=("Pushpa" "RRR" "Devara")
# Index starts from 0, total size is 3.

echo "First movie: ${MOVIES[0]}"
echo "Second movie: ${MOVIES[1]}"
echo "Third movie: ${MOVIES[2]}"

# '@' is a special character used to access all elements in the array.
echo "All movies: ${MOVIES[@]}"
