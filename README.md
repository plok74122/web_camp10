# README

*GET /articles/show/:id
    {
      "id": 1,
      "title": "Consequatur qui facere deserunt ullam.",
      "content": "[\"Perferendis ea modi. Fugit aperiam ut quia id distinctio iusto blanditiis. Distinctio quod et dolorem. Aut deleniti iure voluptatem sequi quia dicta molestiae. Minima vel possimus ipsam.\", \"Eligendi perspiciatis aspernatur quaerat. Dicta error soluta velit. Dolor alias sit rerum delectus possimus molestiae. Dignissimos voluptatem dolores laudantium.\", \"Sint debitis recusandae numquam. Quae exercitationem iure. Odio voluptatem quos quibusdam et. Et ut est rerum sed totam qui.\"]",
      "created_at": "2016-08-29T04:29:32.637Z",
      "updated_at": "2016-08-29T04:29:32.637Z"
    }

*POST /articles/create
    {
      "article": {
        "id": 25,
        "title": "1111",
        "content": "2222",
        "created_at": "2016-08-29T06:47:19.299Z",
        "updated_at": "2016-08-29T06:47:19.299Z"
      },
      "message": "create success"
    }

    {
      "errors": {
        "content": [
          "can't be blank"
        ]
      },
      "message": "Invalid"
    }

*POST /articles/update/:id
    {
      "article": {
        "id": 24,
        "title": "edit",
        "content": "22222",
        "created_at": "2016-08-29T06:32:57.362Z",
        "updated_at": "2016-08-29T06:33:12.716Z"
      },
      "message": "update success"
    }

*POST /articles/destroy/:id
    {
      "message": "destroy success"
    }

*Can't find article
    {
      "message": "can't find this article"
    }