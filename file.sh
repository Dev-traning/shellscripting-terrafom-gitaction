#!/bin/bash

n=5  # You can replace 5 with the desired number of Fibonacci numbers

# Function to calculate factorial
calculate_factorial() {
  local num=$1
  local result=1

  for ((i=1; i<=num; i++)); do
    result=$((result * i))
  done

  echo $result
}

# Generate Fibonacci series
a=0
b=1

for ((i=1; i<=n; i++)); do
  echo -n "Fibonacci($i): $a - Factorial: "
  factorial=$(calculate_factorial $a)

  # Print stars based on factorial value
  for ((j=0; j<factorial; j++)); do
    echo -n "*"
  done

  echo  # Move to the next line after printing stars
  c=$((a + b))
  a=$b
  b=$c
done

for mission in {0..10}
do 
echo $mission
done
