#!/bin/bash

printf "%s\n" "無料SMS送信ツール";
printf "%s\n\n" "一日一回だけ！";

printf "%s" "電話番号：";
read b;
printf "%s" "メッセージ：";
read c;
printf "%s\n" "送信中..."
curl -X POST https://textbelt.com/text --data-urlencode phone="$b" --data-urlencode message="$c" -d key=textbelt
