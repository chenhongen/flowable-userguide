#!/bin/bash

if [ -z "$1" ]
then
  echo -e "Usage: \n${0##*/} bpmn \n${0##*/} cmmn \n${0##*/} dmn \n${0##*/} form \n${0##*/} single"
  exit 1
fi

if [ $1 == bpmn ] || [ $1 == cmmn  ] || [ $1 == dmn ] || [ $1 == form  ] || [ $1 == single  ]
then
  cd ../src/en/$1
  ./generate-html.sh
else
  echo -e "Usage: \n${0##*/} bpmn \n${0##*/} cmmn \n${0##*/} dmn \n${0##*/} form"
  exit 1
fi


