#!/bin/bash

MOVIES=("RRR" "Tillu" "Murari")
echo "First movie:: ${MOVIES[0]}"
echo "Second movie :: ${MOVIES[1]}"
echo "third movie :: ${MOVIES[@]}" # print all movies in the array