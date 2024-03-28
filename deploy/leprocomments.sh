# how to get comments from leprosorium
for i in {1..112}; do
	url=https://leprosorium.ru/api/users/tug/comments/?page=$i
	curl $url \
	-X 'GET' \
	-H 'X-Futuware-UID: 5439' \
	-H 'X-Futuware-SID: 3433b71d062936c260f78cb9483ff26d' \
	> ../../leprosorium_comments/comments_$i.json
done