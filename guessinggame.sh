#!/usr/bin/env bash

function get_file_count {
  echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

correct_count=$(get_file_count)
user_guess=-1

while [[ $user_guess -ne $correct_count ]]; do
  read -p "Enter your guess: " user_guess

  if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi

  if [[ $user_guess -lt $correct_count ]]; then
    echo "Too low!"
  elif [[ $user_guess -gt $correct_count ]]; then
    echo "Too high!"
  else
    echo "Congratulations! You guessed right!"
  fi
done
