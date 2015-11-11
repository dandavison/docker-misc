# Create an index:
#
curl -X DELETE "http://127.0.0.1:9200/test_index_es1"
curl -X PUT "http://127.0.0.1:9200/test_index_es1"

# Insert the action mapping, as a child of test_index_es1:
#
curl -X PUT 'http://127.0.0.1:9200/test_index_es1/article/_mapping' -d
'
{
  "article": {
    "properties": {
      "title": {
        "store": true,
        "type": "string"
      },
    }
  }
}
'

# Insert some test_index_es1:
#
for ((i=1; i<6; i++))
do
  curl -X PUT 'http://127.0.0.1:9200/test_index_es1/article/'$i -d '
  {
    "title": "Article '$i'"
  }
  '
done

# Ensure the index is up-to-date:
#
curl -X POST 'http://127.0.0.1:9200/test_index_es1/_refresh'
