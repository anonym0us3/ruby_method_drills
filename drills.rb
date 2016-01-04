#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'

def say_hello
  "hello" # Why doesn't this use puts???
end

#echo
  # returns the input string

def echo(input)
  input #why doesn't this use puts???
end

#eddie_izzards_height
  # calculates Eddie Izzards height (67in)
  # and takes into account the height of his heel (default: 0in)

def eddie_izzards_height( heel_height = 0 )
  67 + heel_height
end

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function

def how_many_args(*args)
  args.length
end

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments

def find_answer(**keyw_arg)
  keyw_arg[:answer]
end

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # returns the first letter of the word
  # lowercases the first letter of the word

def first_char(stuff)
  stuff[0].downcase
end

#polly_wanna
  # echoes the original word
  # repeats the original word 3 times

def polly_wanna(orig_word)
  orig_word*3
end

#count_chars
  # returns the number of characters in a string

def count_chars(string)
  string.length
end

#yell
  # convert the message to uppercase
  # adds an exclamation point to the end of the message

def yell(message)
#  puts message.upcase + "!" #why didn't this pass the test?
  message.upcase + "!"
end

#to_telegram
  # replaces periods with ' STOP'

def to_telegram(telegram)
  telegram.gsub( ".", " STOP" )
end

#spell_out
  # returns the input string, with characters seperated by dashes
  # converts the string to lowercase

def spell_out(input)
  input.downcase.split("").join("-")
end

#separate
  # separates characters with a custom separator, when supplied with one
  # separates characters with dashes (by default)

#  <crying!> at the misspellings of sepA(!)rate/rator/rates

def separate(characters, custom_sepArator="-")
  characters.split("").join(custom_sepArator)
end

#croon
  # seperates word characters with dashes
  # preserves whitespace between words

def croon(song_lyrics)
  song_lyrics.split(" ").map {|word| word.split("").join("-") }.join(" ")
end

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case

def palindrome_word?(word)
  normalized = word.downcase
  normalized.reverse == normalized
end

#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

def palindrome_sentence?(sentence)
  normalized = sentence.gsub(/[^a-z]/i, "").downcase
  normalized.reverse == normalized
end

#is_vowel
  # determines whether a given character is a vowel
  # ignores case
  # handles weird inputs gracefully

def is_vowel(character)
  character.is_a?(String) && !!character.match(/[aeiou]/i)
end  

#add_period
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # counts the spaces in a string

def count_spaces(string)
  count = 0
  space = " "
  string.each_char do |char|
    if char == space
      count += 1
    end
  end
  count
end

#string_lengths
  # converts a list of strings to a list of string lengths

def string_lengths(strings_list)
  strings_list.map { |string| string.length }
end

#remove_falsy_values
  # filters out falsy values from a list

def remove_falsy_values(list)
  list.select { |value| !!value }
end

#exclude_last
  # removes the last item from an array
  # removes the last item from a string

def exclude_last(input)
  input[0..-2]
end

#exclude_first
  # removes the first item from an array
  # removes the first character from a string
  # does not alter the original input (non-destructive)

def exclude_first(input)
  input[1..-1]
end

#exclude_ends
  # removes the first and last items from an array
  # removes the first and last characters from a string

def exclude_ends(input)
  input[1..-2]
end

#select_every_even
  # returns a list of even-indexed items

def select_every_even(items)
  items.select.with_index { |item, index| item if index.even? }
end

#select_every_odd
  # returns a list of odd-indexed items

def select_every_odd(items)
  items.select.with_index { |item, index| item if index.odd? }
end

#select_every_n
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

def select_every_n(items, int=1)
  items.select.with_index { |item, index| item if index%int == 0 }
end

#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol

##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # returns an array containing every integer from 0 to n
  # rounds off decimals

#is_integer?
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

#is_prime?
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers

#primes_less_than
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

#iterative_factorial
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates factorial



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # counts how many times each character appears in a string
  # ignores case

#word_count
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z

#most_frequent_word
  # finds the word in a string that appears with the most frequency
