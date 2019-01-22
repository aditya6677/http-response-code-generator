while IFS=, read -r Id Url
    do
    STATUS=$(curl -s -o /dev/null -w '%{http_code}' "$Url")
    echo "$Url,$STATUS" >> log.csv
    printf "."
done < report.csv
