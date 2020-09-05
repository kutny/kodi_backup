## Kodi backup script

```
cd /home/osmc
sudo apt-get update && sudo apt-get install -y python3-pip cron git
git clone https://github.com/kutny/kodi_backup.git
cd kodi_backup
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python3 -
/home/osmc/.local/bin/poetry install --no-root

AWS_ACCESS_KEY_ID=xxx AWS_SECRET_ACCESS_KEY=yyy ./setup.sh
```
