import os
from pathlib import Path
import json

DATA_DIR = Path("../../leprosorium_comments")


def file_process(name):
	path = DATA_DIR / name
	with open(path, "rb") as fp:
		result = json.load(fp)

	return result


def process():
	data = []
	for i in os.listdir(DATA_DIR):
		if "comments_" not in i: 
			continue
		data_page = file_process(i)
		data += data_page["comments"]
		print("Processed page", i)

	with open(DATA_DIR / "comments.txt", "w") as fp:
		data_to_dump = data.sort(key=lambda x: -x["created"])
		json.dump(data, fp)


if __name__ == "__main__":
	process()
	print("Done")
