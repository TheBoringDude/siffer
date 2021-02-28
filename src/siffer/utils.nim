# siffer utility functions

import sequtils, strutils, constants

proc shiftLetters*(rotation: int): string {.noSideEffect.} =
  ## shiftLetters returns a rotated alphabetAscii string based from the set rotation
  return concat(constants.Letters[rotation..constants.Letters.len-1], constants.Letters[
      0..rotation-1]).join()