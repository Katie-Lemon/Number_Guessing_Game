#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

if [[ -z $USER_ID ]]
then
  INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = $USER_ID")
  if [[ -z $BEST_GAME ]]
  then
    BEST_GAME=0
  fi
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Guess the secret number between 1 and 1000:"

while [[ -z $GUESS || $GUESS != $SECRET_NUMBER ]]
do
  read GUESS
  # if guess is not blank
  if [[ ! -z $GUESS ]]
  then
    # add to number of guesses
    NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
    # if guess is not an integer
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
    # if guess is higher than secret number
    elif (( $GUESS > $SECRET_NUMBER ))
    then
      echo "It's lower than that, guess again:"
    # if guess is lower than secret number
    elif (( $GUESS < $SECRET_NUMBER ))
    then
      echo "It's higher than that, guess again:"
    fi
  fi
done

echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!\n"

INSERT_GUESS_NUMBER=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")
