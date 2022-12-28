if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jegaa1/url-auto-delete-shortener-bot1 /url-auto-delete-shortener-bot1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /url-auto-delete-shortener-bot1
fi
cd /url-auto-delete-shortener-bot1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
