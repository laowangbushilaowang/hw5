# Copyright 2019 Google LLC All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Echo commands and fail on error
set -ev

# [START getting_started_gce_startup_script]
# Install or update needed software
sudo apt-get update
# apt-get install -yq git supervisor python python3-pip python3-distutils
sudo apt-get install -yq python3-pip python3-distutils git
# pip install --upgrade pip virtualenv
pip3 install Flask
pip3 install google-cloud-pubsub
pip3 install google-cloud-storage
pip3 install google-cloud-logging
pip3 install pymysql
pip3 install sqlalchemy
pip3 install "cloud-sql-python-connector[pymysql]"
git clone https://github.com/laowangbushilaowang/hw5.git
cd hw5
python3 app.py
# Fetch source code
# export HOME=/root
# git clone https://github.com/GoogleCloudPlatform/getting-started-python.git /opt/app

# # Install Cloud Ops Agent
# sudo bash /opt/app/gce/add-google-cloud-ops-agent-repo.sh --also-install

# # Account to own server process
# useradd -m -d /home/pythonapp pythonapp

# # Python environment setup
# virtualenv -p python3 /opt/app/gce/env
# /bin/bash -c "source /opt/app/gce/env/bin/activate"
# /opt/app/gce/env/bin/pip install -r /opt/app/gce/requirements.txt

# # Set ownership to newly created account
# chown -R pythonapp:pythonapp /opt/app

# # Put supervisor configuration in proper place
# cp /opt/app/gce/python-app.conf /etc/supervisor/conf.d/python-app.conf

# # Start service via supervisorctl
# supervisorctl reread
# supervisorctl update
# # [END getting_started_gce_startup_script]
