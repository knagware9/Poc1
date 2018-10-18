echo "POST invoke chaincode on peers of Org1, Org2, Org3 and Org4"
echo
TRX_ID=$(curl -s -X POST \
  http://localhost:4000/channels/mychannel/chaincodes/mycc \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1Mzk4OTQwMzYsInVzZXJuYW1lIjoiSmltIiwib3JnTmFtZSI6Ik9yZzEiLCJpYXQiOjE1Mzk4NTgwMzZ9.L4WLql8BQ0aHqqtAOPzll4L3Wqlp6hxAbmAYBGF9Uhc" \
  -H "content-type: application/json" \
  -d '{
	"peers": ["peer0.org1.rolex.com","peer0.org2.dealer.com","peer0.org3.service.com","peer0.org4.insurer.com"],
	"fcn":"addProduct",
	"args":["N1235","B1234","M1234","Rolex Classic","02-12-2019","C2345", "$15200", "10gms Dial"]
}')
echo "Transaction ID is $TRX_ID"
echo
echo


