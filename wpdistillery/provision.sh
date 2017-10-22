#!/usr/bin/env bash
#
# WPDIstillery provisioning file
# updated to use nightly build of WP-CLI
#
# Author: John Pitchko/Flurin Dürst
# URL: https://wpdistillery.org
#
# File version 1.1.1

# update WP-CLI
# since Scotch Box 3.0 (php7), we have to reinstall WP-CLI

echo "== Update WP CLI (re-install) =="
cd ../../../
sudo rm usr/local/bin/wp
sudo curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar
sudo chmod +x wp-cli-nightly.phar
sudo mv wp-cli-nightly.phar /usr/local/bin/wp
echo "WP-CLI Update successful"

# run WPDistillery
echo "== Run WPDistillery =="
cd ../../var/www/wpdistillery
sudo -u vagrant bash wpdistillery.sh
