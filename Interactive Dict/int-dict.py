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
  wierd_w = get_close_matches(word, data.keys())
  ranked_weird = []
  concepts = []

  # appending rank of the matches into a list
  for x in wierd_w:
    ranked_weird.append(round(SequenceMatcher(None,word, x).ratio(),2))
  
  while True:
    if word in data.keys():
      [concepts.append(x) for x in data[word]]

      print('')
      print('Your word has', len(data[word]), 'concepts. Do you want to see them all or just the first?')
      sel_concepts = input('Reply "one", else all concepts will be shown: ')
      print('')

      if sel_concepts == 'one':
        return print('Concept: ',concepts[0])
      else:
        for x in range(len(data[word])):
          print('Concept ',x+1,':', concepts[x-1])
          print('')
        break

    else:
      print('')
      if len(wierd_w) == 0:
        return 'We didnt find a decent match, try another word'
        
      else:
        print('We found a good match for your word.')
        print(wierd_w)
        print('% of the matching words: ', ranked_weird)
        print('')

        print('Is your word in this list? If so select a number in the range 1 -', len(wierd_w), '. Else type "no"')
        fixed_word = input()

        if fixed_word.isdigit() is True:
          fixed_word = int(fixed_word) - 1

          if len(wierd_w) >= fixed_word + 1:
            return print(wierd_w[fixed_word], ':', data[wierd_w[fixed_word]])

          elif len(wierd_w) < fixed_word + 1:
            print ('Number out of range')

          else:
            return 'Didnt type any number'

        elif fixed_word.lower() == 'no':
          return 'Try a different word'

        else:
          print('Type a correct number')


print(translate(word))
# one thing that can be improved is implementing the same distribution of the concepts (in case there's more than one) when the program doesn't find the word in the keys.