#!/bin/bash

echo "- Обновляем иконки"

knsrc-tool icons install 2303161
kwriteconfig6 --file kdeglobals --group Icons --key Theme "yet-another-monochrome-icon-set"