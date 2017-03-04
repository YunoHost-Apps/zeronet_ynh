#!/usr/bin/env bash

set -eu

app_config_get() { 
  local app_config=$1
  local attribute=$2
  
  cat ${app_config} \
    | grep ${attribute} \
    | cut --delimiter== --fields=2
}

make_deploy_path() {
  local app=$1
  local source_version=$2

  echo "/var/www/${app}-v${source_version}" # e.g. /var/www/zeronet__2-0.5.3
}

download_file() {
  local url=$1
  local output_document=$2
  wget --no-verbose --output-document=${output_document} ${url}
}

check_file_integrity() {
  local file=$1
  local expected_checksum=$2

  echo "${expected_checksum} ${file}" | sha256sum --check --status \
    || ynh_die "Corrupt source!"
}

extract_archive() {
  local src_file=$1
  local deploy_path=$2

  sudo mkdir --parents ${deploy_path} 
  sudo tar --extract --file=${src_file} --directory=${deploy_path} --overwrite --strip-components 1
}

obtain_and_deploy_source() {
  local app_config=$1
  local deploy_path=$2
  local symlink_to_deploy_path=$3
  local user=$4
  local src_url=$(app_config_get $app_config "SOURCE_URL")
  local src_checksum=$(app_config_get $app_config "SOURCE_SUM")
  local src_file="/tmp/source.tar.gz"

  download_file $src_url $src_file
  check_file_integrity $src_file $src_checksum
  extract_archive $src_file $deploy_path
  
  sudo ln --symbolic --force $deploy_path $symlink_to_deploy_path 

  sudo chown $user: -LR $symlink_to_deploy_path
  sudo chown $user: -h $symlink_to_deploy_path
}
