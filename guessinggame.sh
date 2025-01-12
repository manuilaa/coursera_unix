#!/usr/bin/env bash

# Function to get the number of files in the current directory
function get_file_count {
  echo $(ls -1 | wc -l)
}

# Main game loop
echo "Welcome to the Guessing Game!"
file_count=$(get_file_count)
while true; do
  echo "Guess how many files are in the current directory:"
  read user_guess
  
  if [[ ! $user_guess =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi

  if [[ $user_guess -lt $file_count ]]; then
    echo "Your guess is too low. Try again."
  elif [[ $user_guess -gt $file_count ]]; then
    echo "Your guess is too high. Try again."
  else
    echo "Congratulations! You guessed it correctly."
    break
  fi
done
