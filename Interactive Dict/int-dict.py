import json
import difflib
from difflib import SequenceMatcher
from difflib import get_close_matches

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
  ranked_weird = []

  for x in wierd_w:
    ranked_weird.append(SequenceMatcher(None,word, x).ratio())
  
  index_of_max = ranked_weird = index(max(ranked_weird))

  if word in data.keys():
    return (data[word][0])

  else:
    print('')
    print('We found a good match for your word.')
    print(wierd_w[])




    print('Is your word in this list? ')
    print(wierd_w)
    print('')



    print('If so press the number of your word, else type "no" ')
    

    fixed_word = input('Select a number: ')

    if fixed_word.isdigit() is True:
      fixed_word = int(fixed_word) - 1
      return data[wierd_w[fixed_word]][0]

    elif fixed_word.lower() == 'no':
      return 'Try a different word'

    else:
      return 'Type a number of the list or "no"'


print(translate(word))