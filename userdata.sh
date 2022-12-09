#!/bin/bash
sudo apt-get update -y
sudo apt-get install git -y 
sudo git clone https://github.com/Spidy20/InNews.git
sudo apt-get install python3-pip -y
cd /InNews/
python3 -m pip install -r requirements.txt
python3 -m pip install streamlit
python3 -m pip install networkx
python3 -m pip install --upgrade jinja2
python3 -m pip install BeautifulSoup4
pip install newspaper
pip3 install newspaper3k
python3 -m streamlit run App.py 