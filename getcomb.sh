curl -XPOST -H "Content-type: application/json" -d '{
    "address": "'$1'",
    "method": "get_combination_value",
    "args": [
        {
            "value": 8,
           "tpe": "int32"
        },
        {
            "value": 9,
           "tpe": "int32"
        },
        {
            "value": 10,
           "tpe": "int32"
        },
        {
            "value": 11,
           "tpe": "int32"
        },
        {
            "value": 12,
           "tpe": "int32"
        }
    ]
}' 'http://127.0.0.1:8087/api/program/method'


