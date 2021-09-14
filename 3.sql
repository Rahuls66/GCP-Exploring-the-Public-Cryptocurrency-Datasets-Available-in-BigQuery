CREATE OR REPLACE TABLE lab.51 (transaction_hash STRING) as 
SELECT -- write the rest of the select statement (remember to use where) ...
transaction_id FROM `bigquery-public-data.bitcoin_blockchain.transactions` , UNNEST( outputs ) as outputs
where outputs.output_satoshis = 19499300000000
