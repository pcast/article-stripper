#!/usr/bin/env bash

current_dir=`dirname $0`


curl -o $current_dir/strip.html "http://www.jansatta.com/rajya/aap-party-claim-election-commission-issued-a-notice-by-mistake-of-9-mlas/182454/"

title=$(cat $current_dir/strip.html | pup 'title text{}')
og_title=$(cat $current_dir/strip.html | pup '[property="og:title"] attr{content}')
description=$(cat $current_dir/strip.html | pup '[name="description"] attr{content}')
og_description=$(cat $current_dir/strip.html | pup '[property="og:description"] attr{content}')
og_url=$(cat $current_dir/strip.html | pup '[property="og:url"] attr{content}')
og_site=$(cat $current_dir/strip.html | pup '[property="og:site_name"] attr{content}')
og_image=$(cat $current_dir/strip.html | pup '[property="og:image"] attr{content}')
keywords=$(cat $current_dir/strip.html | pup '[name="keywords"] attr{content}')
section=$(cat $current_dir/strip.html | pup '[property="article:section"] attr{content}')

echo "Title: " $title >> $current_dir/article_data.txt
echo "OG Title: " $og_title >> $current_dir/article_data.txt
echo "Description: " $description >> $current_dir/article_data.txt
echo "OG Description: " $og_description >> $current_dir/article_data.txt
echo "OG URL: " $og_url >> $current_dir/article_data.txt
echo "OG Site: " $og_site >> $current_dir/article_data.txt
echo "OG Image: " $og_image >> $current_dir/article_data.txt
echo "Keywords: " $keywords >> $current_dir/article_data.txt
echo "Section: " $section >> $current_dir/article_data.txt
