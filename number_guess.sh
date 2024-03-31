#!/bin/bash

# Initialize PSQL command with the appropriate username and database name
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate a random number between 1 and 1000
SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))

# Function to prompt user for username
ASK_USERNAME(){
  echo -e "\nEnter your username:"
  read USERNAME

  # Check if the username exceeds 22 characters
  USERNAME_CHARACTERS=$(echo $USERNAME | wc -c)
  if [[ $USERNAME_CHARACTERS -gt 22 ]]
  then
    ASK_USERNAME
  fi
}

# Function to handle the guessing logic
GUESSING_MACHINE(){
  echo -e "\nGuess the secret number between 1 and 1000:"
  read GUESS

  # Loop until the correct guess is made
  while true
  do
    # Check if the input is an integer
    if [[ $GUESS =~ ^[0-9]+$ ]]
    then
      # Increment the number of tries
      TRIES=$((TRIES + 1))

      # Check if the guess is correct
      if [[ $GUESS -eq $SECRET_NUMBER ]]
      then
        break
      elif [[ $GUESS -gt $SECRET_NUMBER ]]
      then
        echo -e "\nIt's lower than that, guess again:"
      else
        echo -e "\nIt's higher than that, guess again:"
      fi
    else
      echo -e "\nThat is not an integer, guess again:"
    fi
    read GUESS
  done
}

# Prompt user for username
ASK_USERNAME

# Query the database for returning user
RETURNING_USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

if [[ -z $RETURNING_USER ]]
then
  # If user is new, insert username into the database
  INSERTED_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  # If user is returning, retrieve user's statistics
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Start guessing
TRIES=0
GUESSING_MACHINE

# Insert game data into the database
INSERTED_GAME=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ((SELECT user_id FROM users WHERE username = '$USERNAME'), $TRIES)")

# Print final message
echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
