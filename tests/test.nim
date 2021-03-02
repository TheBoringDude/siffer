# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import siffer


test "encode rot-13":
  # check rot13
  check rot13("hello WORLD 123") == "uryyb JBEYQ 123"

test "decode rot-13":
  # check rot13
  check rot13("uununuun shaal!") == "hhahahha funny!"

test "use rot-5":
  # check rot5
  check rot5("1 23 456 7890") == "6 78 901 2345"

test "use rot-18":
  # check rot18
  check rot18("hello world 123") == "uryyb jbeyq 678"

test "use rot-47":
  # check rot47
  check rot47("decode Rot-47") == "564@56 #@E\\cf" # double '\' is used because of '\c' being escaped
