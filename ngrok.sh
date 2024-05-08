#!/bin/bash

# Ngrok command
ngrok_cmd="ngrok tunnel --label edge=edghts_2bypB13WUY8dEK3gnfcEbu4pXFL http://localhost:443 > /dev/null 2>&1"

$ngrok_cmd
