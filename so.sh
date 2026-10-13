#!/bin/bash
#
# so hotlist
#

curl -s -A Mozilla/5.0 'https://ranks.hao.360.com/mbsug-api/hotnewsquery?type=news&realhot_limit=100' |
  jq 'map({rank, id: .index, url, img_url, news_url, title, summary: .sumtxt, category, score, timestamp: .recordTime})'
