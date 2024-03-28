import os
import sys
import json
from pathlib import Path

DATA_DIR = Path("../../leprosorium_comments")


def process(begin = 0, size = 1):
	print("Process", begin, size)
	s = slice(begin, begin + size)
	with open(DATA_DIR / "comments.txt", "rb") as fp:
		data = json.load(fp)

	result = data[s]
	print(json.dumps(result, indent=4, ensure_ascii=False))


if __name__ == "__main__":
	args = [int(x) for x in sys.argv[1:]]

	print(args)
	process(*args)
	print("Done")
