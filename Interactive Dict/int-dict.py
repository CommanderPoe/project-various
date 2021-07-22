import json
import difflib

# with open('data.json') as f:
#     data = json.load(f)

# opening and loading the data
data = json.load(open('data.json'))

# asking user for input
word = input('Enter word: ' )    

# defining function that returns definition of word if exists
def translate(word):
  word = word.lower()
  wierd_w = difflib.get_close_matches(word, data)

  if word in data.keys():
    return (data[word][0])
  else:
    print('')
    print('Is your word in this list ')
    print(wierd_w)

    fixed_word = int(input('Select a number: '))
    return data[wierd_w[fixed_word]][0]

  # else:
  #   return ('Try a different word')

print(translate(word))