#!/bin/bash

# 新しいPJ名を設定
new_pj_name='newPJ'

# 該当ファイルの文字列置換
grep -l 'djangoPJ' ./docker_infra/python_server/uwsgi.ini | xargs sed -i.bak -e "s/djangoPJ/${new_pj_name}/g"
rm ./docker_infra/python_server/uwsgi.ini.bak

grep -l 'djangoPJ' ./docker_infra/docker-compose.dev.yml | xargs sed -i.bak -e "s/djangoPJ/${new_pj_name}/g"
rm ./docker_infra/docker-compose.dev.yml.bak

grep -l 'djangoPJ' ./docker_infra/docker-compose.product.yml | xargs sed -i.bak -e "s/djangoPJ/${new_pj_name}/g"
rm ./docker_infra/docker-compose.product.yml.bak

grep -l 'djangoPJ' ./docker_infra/docker-compose.yml | xargs sed -i.bak -e "s/djangoPJ/${new_pj_name}/g"
rm ./docker_infra/docker-compose.yml.bak

grep -l 'djangoPJ' ./djangoPJ/manage.py | xargs sed -i.bak -e "s/djangoPJ/${new_pj_name}/g"
rm ./djangoPJ/manage.py.bak

grep -l 'djangoPJ' ./djangoPJ/djangoPJ/settings/base.py | xargs sed -i.bak -e "s/djangoPJ/${new_pj_name}/g"
rm ./djangoPJ/djangoPJ/settings/base.py.bak

grep -l 'djangoPJ' ./djangoPJ/djangoPJ/settings/dev.py | xargs sed -i.bak -e "s/djangoPJ/${new_pj_name}/g"
rm ./djangoPJ/djangoPJ/settings/dev.py.bak

grep -l 'djangoPJ' ./djangoPJ/djangoPJ/settings/product.py | xargs sed -i.bak -e "s/djangoPJ/${new_pj_name}/g"
rm ./djangoPJ/djangoPJ/settings/product.py.bak

# フォルダ名変更
mv ./djangoPJ/djangoPJ "./djangoPJ/${new_pj_name}"
mv ./djangoPJ "${new_pj_name}"
