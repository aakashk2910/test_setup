while read -r line 
do 
    ./quic_perf -t -4 -s $line:443 -p / -V Q043 2>/dev/null >> output_quic.csv
    ./quic_perf -t -4 -s $line:443 -p / -V Q046 2>/dev/null >> output_quic.csv
    ./quic_perf -t -4 -s $line:443 -p / -V Q050 2>/dev/null >> output_quic.csv
    ./quic_perf -t -4 -s $line:443 -p / version=h3-24 2>/dev/null >> output_quic.csv
    ./quic_perf -t -6 -s $line:443 -p / -V Q043 2>/dev/null >> output_quic.csv
    ./quic_perf -t -6 -s $line:443 -p / -V Q046 2>/dev/null >> output_quic.csv
    ./quic_perf -t -6 -s $line:443 -p / -V Q050 2>/dev/null >> output_quic.csv
    ./quic_perf -t -6 -s $line:443 -p / version=h3-24 2>/dev/null >> output_quic.csv
done< "$1"
