#!/bin/bash

average() {
  read -p "Enter the value of P: " p
  sum=0

  for ((i=1; i<=p; i++)); do
    sum=$((sum + i))
  done

  if ((p > 0)); then
    avg=$((sum / p))
    echo "Average: $avg"
  else
    echo "Cannot calculate average for zero values."
  fi
}

# Call the function
average

