dictionary = set()

def read_dictionary_file():
    global dictionary
    if dictionary:
        return


    with open("tr.txt", encoding="utf8") as f:
        contents = f.read()

    dictionary = set(
        word.lower()
        for word in contents.splitlines()
    )


def is_spelled_correctly(word):

    word = word.lower()
    read_dictionary_file()
    return word in dictionary
