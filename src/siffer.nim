# siffer main utility functions

import strutils, siffer/constants, siffer/utils


proc getShiftedLetters(rotation: int): (string, string) {.noSideEffect, inline.} = (shiftLowerLetters(
    rotation), shiftUpperLetters(rotation))
  ## getShiftedLetters returns the shifted / rotated lowercase and uppercase alphabet string

proc encodeRot13*(x: string): string {.noSideEffect.} =
  ## encodeRot13 encodes a string using the rot-13 cipher

  # get the shifted / rotated letters for easier parsing
  let (lowerLetters, upperLetters) = getShiftedLetters(13)

  for i in x:
    if i.isLowerAscii():
      result &= lowerLetters[LowerLetters.find(i)]
    elif i.isUpperAscii():
      result &= upperLetters[UpperLetters.find(i)]
    else:
      result &= i


proc decodeRot13*(x: string): string {.noSideEffect.} =
  ## decodeRot13 decodes cipher string using the rot-13 cipher

  # get the shifted / rotated letters for easier parsing
  let (lowerLetters, upperLetters) = getShiftedLetters(13)

  for i in x:
    if i.isLowerAscii():
      result &= LowerLetters[lowerLetters.find(i)]
    elif i.isUpperAscii():
      result &= UpperLetters[upperLetters.find(i)]
    else:
      result &= i
