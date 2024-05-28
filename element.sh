#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

NOT_FOUND() {
  echo I could not find that element in the database.
}
OUTPUT_MESSAGE=(echo "\nThe element with atomic number $ATOMIC_NO is $ELEMENT_NAME. It's a $ELEMENT_TYPE, with a mass of $ATOMIC_MASS amu. $ELEMENT_NAME has a melting point of $ELEMENT_MELTING_POINT celsius and a boiling point of $ELEMENT_BOILING_POINT celsius.")

# if no argument
if [[ -z $1 ]]

then
  echo Please provide an element as an argument.

#if $1 is a number
elif [[ $1 =~ ^[0-9]+$ ]]

then
  # get atomic number
  ATOMIC_NO=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$1")

  # if $1 is not an atomic number
  if [[ -z $ATOMIC_NO ]]

  then
    NOT_FOUND
  else
  # get element name
    echo element name
  # get element type
    echo element type
  # get atomic mass
    echo atomic mass
  # get element melting point 
    echo melting point
  # get element boiling point
    echo boiling point
  fi
fi
