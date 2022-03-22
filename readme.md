# gasprice

estimates ethereum gas price based on recent blocks and provides a simple api


## api

```json
{
  "block_number": 4813900,
  "block_time": 14.9,
  "health": true,
  "slow": 1,
  "standard": 4,
  "fast": 20,
  "instant": 40
}
```

`slow`, `standard`, `fast` and `instant` values represent minimal gas price of the latest 200 blocks. by default slow represents 30% probability, standard is 60%, fast is 90% and instant is 100%.


## Docker build:

 ```
 docker build -t gasprice:latest .
 ```

 ## Docker run:

 ```
docker run -it -d -p 8080:8080  -e "ETH_RPC_URL=<rpc-url>" -e "WINDOW=200" -e "POLL_RATE=4" gasprice:latest
```
