curl -XPOST -H "Content-type: application/json" -d '{
    "address": "'$1'",
    "method": "showdown",
    "args": [
        {
            "value": "asdfasdf",
           "tpe": "utf8"
        },
        {
            "value": "050102030405",
           "tpe": "bytes"
        }
    ]
}' 'http://127.0.0.1:8087/api/program/method'


