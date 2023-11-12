if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Walter3699/AkEntertainmentsbot.git /AkEntertainmentsbot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AkEntertainmentsbot 
fi
cd /AkEntertainmentsbot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
