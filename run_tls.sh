while read -r line 
do 
    ./tls_perf -4 -u $line -p 443 2>/dev/null >> output_curl_data.csv
    ./tls_perf -4 -3 -u $line -p 443 2>/dev/null >> output_curl_data.csv
    ./tls_perf -4 -2 -u $line -p 443 2>/dev/null >> output_curl_data.csv
    ./tls_perf -4 -3 -2 -u $line -p 443 2>/dev/null >> output_curl_data.csv
    ./tls_perf -6 -u $line -p 443 2>/dev/null >> output_curl_data.csv
    ./tls_perf -6 -3 -u $line -p 443 2>/dev/null >> output_curl_data.csv
    ./tls_perf -6 -2 -u $line -p 443 2>/dev/null >> output_curl_data.csv
    ./tls_perf -6 -3 -2 -u $line -p 443 2>/dev/null >> output_curl_data.csv
done< "$1"
