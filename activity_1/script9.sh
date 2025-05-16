#!/bin/bash

CRACK="oriolorioloriol"
echo $CRACK
echo "The result of ##*ori is" ${CRACK##*ori} #This command deletes all the content untill it reaches the last ori, including ori
echo "The result of #*ori is" ${CRACK#*ori} #This command deletes the first strings until it finds ori
echo "The result of %%ol* is" ${CRACK%%ol*} #This command deletes from the ending untill it finds the last ol
echo "The result of %ori* is" ${CRACK%ori*} #This command deletes from the ending untill it finds ori
