echo "GET query chaincode on peer1 of Org1"
echo
curl -s -X GET \
  "http://localhost:4000/channels/mychannel/chaincodes/mycc?peer=peer0.org1.rolex.com&fcn=query&args=%5B%22N7052779%22%5D" \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1Mzk4OTQwMzYsInVzZXJuYW1lIjoiSmltIiwib3JnTmFtZSI6Ik9yZzEiLCJpYXQiOjE1Mzk4NTgwMzZ9.L4WLql8BQ0aHqqtAOPzll4L3Wqlp6hxAbmAYBGF9Uhc" \
  -H "content-type: application/json"
echo
echo
