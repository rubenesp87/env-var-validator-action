#!/bin/bash

read_file()
{
  invalid=()
  file=".env"
  while IFS="=" read -r key value; do
    [ -z "$value" ] && invalid+=("$key")
  done < "$file"
  if (( ${#invalid[@]} )); then
    echo "ERROR!! There are some invalid environment variables:"
    printf '%s\n' "${invalid[@]}"
    exit 1
  fi
}

read_file
