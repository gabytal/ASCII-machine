# open the file
file = open("input")

# read from file
file_content = file.read()

# replace lines with spaces
contentWithSpaces = file_content.replace("\n", " ")

# split by spaces
splittedContent = contentWithSpaces.split(" ")

# sort
sortedContent = sorted(splittedContent)

# remove duplicates by moving it to a dict
lists = list( dict.fromkeys(sortedContent) )

# declare on new empty list for appending the strings
newlist = []

# append strings to the list, without the letters, and convert to int
for word in lists:
    for letter in word:
        # check if letter is alpha
        if letter.isalpha():
            # remove alpha
            word = word.replace(letter, '')
            # append word to the new list
            newlist.append(int(word))

# declare on empty variable for the sentence
sentence = ''

# convert the the ASCII to sentence
sentence = sentence.join(chr(i) for i in newlist)

print(sentence)

