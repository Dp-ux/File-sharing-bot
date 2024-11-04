if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Dp-ux/File-sharing-bot/File-sharing-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File-sharing-bot
fi
cd /File-sharing-bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
