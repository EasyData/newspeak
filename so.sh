#!/bin/bash
#
# so hotlist
#

curl -s -A Mozilla/5.0 'https://ranks.hao.360.com/mbsug-api/hotnewsquery?type=news&realhot_limit=100' |
  jq 'map({rank: (.rank|tonumber), id: (.index|tonumber), url, img: .img_url, news: .news_url, title, summary: .sumtxt, category, score: (.score|tonumber), timestamp: .recordTime})'
