#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

GUESS() {
  # Declare variables
  PLAYER_ID=$1
  GAME_ID=$2
  GUESS_NUM=$3
  RAN_NUM=$4
  MESSAGE=$5

  # Ask for guess
  echo -e $MESSAGE
  read GUESS

  # Ensure input is a number
  if [[ ! $GUESS =~ ^[0-9]+$ || -z $GUESS ]]
  then
    GUESS $PLAYER_ID $GAME_ID $GUESS_NUM $RAN_NUM "That is not an integer, guess again:"
  else
    # Store data with username
    IN_GUESS=$($PSQL "INSERT INTO guesses(guess,game_id,player_id) VALUES($GUESS,$GAME_ID,$PLAYER_ID)")

    # Increment number of guesses and store
    ((GUESS_NUM++))
    UP_GUESS_NUM=$($PSQL "UPDATE games SET guess_num=$GUESS_NUM WHERE game_id=$GAME_ID")

    # Check whether guess is correct
    if [[ $GUESS -lt $RAN_NUM ]]
    then 
      GUESS $PLAYER_ID $GAME_ID $GUESS_NUM $RAN_NUM "It's higher than that, guess again:"
    elif [[ $GUESS -gt $RAN_NUM ]] 
    then
      GUESS $PLAYER_ID $GAME_ID $GUESS_NUM $RAN_NUM "It's lower than that, guess again:"
    elif [[ $GUESS -eq $RAN_NUM ]] 
    then
      echo "You guessed it in $GUESS_NUM tries. The secret number was $RAN_NUM. Nice job!"
      IN_GUESSED=$($PSQL "UPDATE games SET guessed=True WHERE game_id=$GAME_ID")
    fi
  fi
}

START_MENU() {
  # Ask for name
  echo $1
  read USERNAME

  # Username is longer than 22 characters
  if [[ ${#USERNAME} -lt 22 ]]
  then  
    # Find name in database
    NAME_DB=$($PSQL "SELECT name FROM players WHERE name='$USERNAME'")

    # If not found
    if [[ -z $NAME_DB ]]
      then
      echo -e "Welcome, $USERNAME! It looks like this is your first time here."
    
      # Insert player 
      IN_PLAYER=$($PSQL "INSERT INTO players(name) VALUES('$USERNAME')") 
      PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE name = '$USERNAME'") 
    else
      # Find number of games played and best game
      PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE name = '$USERNAME'")
      GAME_NUM=$($PSQL "SELECT COUNT(game_id) FROM games WHERE player_id=$PLAYER_ID")
      GAME_BEST=$($PSQL "SELECT MIN(guess_num) FROM games WHERE player_id=$PLAYER_ID AND guessed=True")
      NO_WIN=$($PSQL "SELECT * FROM games WHERE player_id=$PLAYER_ID AND guessed=True")
      # If no game won yet
      if [[ -z $NO_WIN ]] 
      then
        GAME_BEST=$($PSQL "SELECT MIN(guess_num) FROM games WHERE player_id=$PLAYER_ID")
      fi
      # Put out message
      echo -e "\nWelcome back, $(echo $USERNAME | sed -E 's/^ *| *$//g')! You have played $(echo $GAME_NUM | sed -E 's/^ *| *$//g') games, and your best game took $(echo $GAME_BEST | sed -E 's/^ *| *$//g') guesses."
    fi
    # Start game
    # Generate random number
    RAN_NUM=$(( RANDOM % 1000 + 1 ))
    # Set guesses to zero
    GUESS_NUM=0
    IN_GAME=$($PSQL "INSERT INTO games(player_id, guess_num, guessed) VALUES($PLAYER_ID, $GUESS_NUM, False)")
    GAME_ID=$($PSQL "SELECT MAX(game_id) FROM games WHERE player_id=$PLAYER_ID")   
    GUESS $PLAYER_ID $GAME_ID $GUESS_NUM $RAN_NUM "\nGuess the secret number between 1 and 1000:"
  else
    START_MENU "Please enter a valid username (max. 22 characters)."
  fi
}

echo -e "\n~~~Welcome to the number guessing game!~~~\n"
START_MENU "Enter your username:"


