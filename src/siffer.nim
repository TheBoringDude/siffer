# siffer main utility functions

import strutils


func rot13*(str: string): string =
  ## rot13 ciphers a string using the rot-13 cipher
  ## code is taken / based from @https://rosettacode.org/wiki/Rot-13#Nim

  result = newString(str.len)
  # iterate over each char in the string, giving its index and the char itself
  for i, c in str:
    result[i] =
      case toLowerAscii(c)
      of 'a'..'m': chr(ord(c) + 13)
      of 'n'..'z': chr(ord(c) - 13)
      else: c


