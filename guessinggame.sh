function count_files {
  ls | wc -l
}
function ask_guess {
  echo "How many files are in the current directory?"
  read -p "Enter your guess: " guess
}

nb_files=$(count_files)
ask_guess

while [[ $guess -ne $nb_files ]]
do
  if [[ $guess -gt $nb_files ]]
  then
    echo "Too high! Try again."
  else
    echo "Too low! Try again."
  fi
  ask_guess
done

echo "Congratulations! You guessed correctly."
