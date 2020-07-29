import sys
from spellcheck import is_spelled_correctly

values = sys.argv[1:]
for value in values:
    if not is_spelled_correctly(value):
        print("Yazım hatası tespit edildi: " + value)
