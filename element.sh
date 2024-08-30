#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
MAIN_PART(){
    ARG=$1
    case $ARG in
    [0-9]*) 
      NUM_SELECTION=$($PSQL "select atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius from properties inner join elements using(atomic_number) inner join types using(type_id) where atomic_number=$ARG")
      if [[ -z $NUM_SELECTION ]]
      then
      echo -e "I could not find that element in the database."
      else
      echo "$NUM_SELECTION" | while read ATOMIC_NUMBER BAR NAME BAR SYMBOL BAR TYPE BAR ATOMIC_MASS BAR MELTING BAR BOILING
      do
      echo -e "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
      done
      fi
      ;;
    [A-Z]|[A-Z][a-z])
      CHAR_SELECTION=$($PSQL "select atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius from properties inner join elements using(atomic_number) inner join types using(type_id) where symbol='$ARG'")
      if [[ -z $CHAR_SELECTION ]]
      then
      echo -e "I could not find that element in the database."
      else
      echo "$CHAR_SELECTION" | while read ATOMIC_NUMBER BAR NAME BAR SYMBOL BAR TYPE BAR ATOMIC_MASS BAR MELTING BAR BOILING
      do
      echo -e "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
      done
      fi
    ;;
    [A-Za-z]*)
    STRING_SELECTION=$($PSQL "select atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius from properties inner join elements using(atomic_number) inner join types using(type_id) where name='$ARG'")
    if [[ -z $STRING_SELECTION ]]
      then
      echo -e "I could not find that element in the database."
      else
      echo "$STRING_SELECTION" | while read ATOMIC_NUMBER BAR NAME BAR SYMBOL BAR TYPE BAR ATOMIC_MASS BAR MELTING BAR BOILING
      do
      echo -e "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
      done
      fi
    ;;
    *) echo -e "I could not find that element in the database.";;
    esac
}
if [[ $1 ]]
then 
  MAIN_PART "$1"
else
  echo -e "Please provide an element as an argument."
fi
