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

    
func rot5*(str: string): string =
  ## rot5 ciphers a number (digit) string w/ rot-5 cipher
  
  result = newString(str.len)

  for i, c in str:
    result[i] =
      case c
      of '0'..'4': chr(ord(c) + 5)
      of '5'..'9': chr(ord(c) - 5)
      else: c

func rot18*(str: string): string = rot13(rot5(str))
  ## rot18 ciphers bot digits and alphabet, 
  # it uses rot13 and rot5, it will be too repetitive to have a code on its own


func rot47*(str: string): string =
  ## rot47 ciphers a string using the 94-character printable ascii characters
  
  result = newString(str.len)

  for i, c in str:
    result[i] =
      case c
      of '!'..'O': chr(ord(c) + 47)
      of 'P'..'~': chr(ord(c) - 47)
      else: c
