# siffer main utility functions

import strutils, siffer/constants, siffer/utils


proc encodeRot13*(x: string): string {.noSideEffect.} =
  ## encodeRot13 encodes a string using the rot-13 cipher

  # get the shifted / rotated letters for easier parsing
  let letters = shiftLetters(13)

  for i in x:
    if i.isLowerAscii():
      result &= letters[constants.Letters.find(i.toUpperAscii())].toLowerAscii()
    elif i.isUpperAscii():
      result &= letters[constants.Letters.find(i)].toUpperAscii()
    else:
      result &= i


proc decodeRot13*(x: string): string {.noSideEffect.} =
  ## decodeRot13 decodes cipher string using the rot-13 cipher

  # get the shifted / rotated letters for easier parsing
  let letters = shiftLetters(13)

  for i in x:
    if i.isLowerAscii():
      result &= constants.Letters[letters.find(i.toUpperAscii())].toLowerAscii()
    elif i.isUpperAscii():
      result &= constants.Letters[letters.find(i)].toUpperAscii()
    else:
      result &= i
