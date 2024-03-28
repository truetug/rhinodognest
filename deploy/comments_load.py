import json
from pydantic import BaseModel, Field
from pathlib import Path
from datetime import datetime

import psycopg

DATA_DIR = Path("../../leprosorium_comments/comments.txt")
DATABASE = "postgresql://postgres:psswd@localhost:5432/truetuginfo"
TABLE_NAME = "comments"


class Domain(BaseModel):
    prefix: str


class Post(BaseModel):
    id: int


class Comment(BaseModel):
    id: int
    body: str
    domain: Domain
    rating: int
    post: Post
    created_at: datetime = Field(alias="created")


def process():
    with open(DATA_DIR, "rb") as fp:
        data = json.load(fp)

    data_to_insert = []
    for row in data:
        obj = Comment.parse_obj(row)
        row = (
            obj.id,
            obj.body,
            obj.domain.prefix if obj.domain.prefix != "/" else "",
            obj.rating,
            obj.post.id,
            obj.created_at,
        )

        data_to_insert.append(row)
        print(obj, row)

    # exit()

    with psycopg.connect(DATABASE) as conn:
        query = (
            f"INSERT INTO {TABLE_NAME} (id, body, domain, rating, post_id, created_at) "
            "VALUES (%s, %s, %s, %s, %s, %s)"
        )
        with conn.cursor() as cur:
            # cur.execute(
            #     """ create table if not exists lotr_character(
            #     p_id integer, first_name text, last_name text,
            #     p_attribute jsonb, quote_content text) """
            # )
        
            cur.executemany(query, data_to_insert)
            conn.commit()


if __name__ == "__main__":
    process()
    print("Done")
