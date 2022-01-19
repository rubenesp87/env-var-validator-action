#!/bin/sh

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
  fi
}

read_file
