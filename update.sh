#!/bin/bash
ls posts | sed 's/\.md$//' | jq -R -s 'split("\n") | map(select(. != ""))' > posts.json
