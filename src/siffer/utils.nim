# siffer utility functions

import sequtils, strutils, constants

proc shiftUpperLetters*(rotation: int): string {.noSideEffect.} =
  ## shiftUpperLetters returns a rotated alphabetAscii string based from the set rotation
  return concat(UpperLetters[rotation..UpperLetters.len-1], UpperLetters[
      0..rotation-1]).join()

proc shiftLowerLetters*(rotation: int): string {.noSideEffect.} =
  ## shiftLowerLetters returns a rotated alphabetAscii string based from the set rotation
  return concat(LowerLetters[rotation..LowerLetters.len-1], LowerLetters[
      0..rotation-1]).join()
