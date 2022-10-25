if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vincenzoie02/autofilterbot46.git /autofilterbot46
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /autofilterbot46
fi
cd /autofilterbot46
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
