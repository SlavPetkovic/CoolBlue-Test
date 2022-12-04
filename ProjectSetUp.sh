echo "  #####     #######    #######    #             ######     #          #     #    ####### ";
echo " #     #    #     #    #     #    #             #     #    #          #     #    #       ";
echo " #          #     #    #     #    #             #     #    #          #     #    #       ";
echo " #          #     #    #     #    #             ######     #          #     #    #####   ";
echo " #          #     #    #     #    #             #     #    #          #     #    #       ";
echo " #     #    #     #    #     #    #             #     #    #          #     #    #       ";
echo "  #####     #######    #######    #######       ######     #######     #####     ####### ";


sleep 2
echo "--------Setting up Raspberry Pi for CoolBlue Rover-------"
# Perform update and upgrade of the system
echo "---------------------------------------------------------"
echo "--------------Initial System Update and Upgrade----------"
echo "---------------------------------------------------------"
echo " "
sudo apt-get update && sudo apt-get -y upgrade
# Install virtual environment library
sudo apt install -y python3-venv

echo " "
sleep 2

# --------------------------------------------------------------
# Setting Up Project Folder and Cloning CoolBlue repo
echo "---------------------------------------------------------"
echo "---------------Setting Up The Testing Project------------"
echo "---------------------------------------------------------"
echo " "
# Create Projects Directory and Setting up an Environment
mkdir Projects
cd Projects
# Cloning the git Repository
git https://github.com/SlavPetkovic/CoolBlue.git
cd CoolBlue
# Setting up python virtual environment
python3 -m venv venv
source venv/bin/activate
curver=$(pip3 -V)
echo "$curver"
# Installing all python libraries necessary for this project
sudo pip3 install SQLAlchemy
sudo pip3 install adafruit-circuitpython-motorkit
sudo pip3 install adafruit-circuitpython-bme680
sudo pip3 install adafruit-circuitpython-veml7700
sudo pip3 install adafruit-blinka
sudo pip3 install multiprocess
sudo apt-get install sqlitebrowser
echo " "
sleep 2
echo "---------------------------------------------------------"
echo " "
echo "--------------------SET UP COMPLETE----------------------"


# --------------------------------------------------------------
# COPYRIGHT: Slav & Stevan Petkovic
# Year: 2022

# Permission is hereby granted, free of charge, to any person obtaining a copy of this software
# and associated documentation files (the "Software"), to deal in the Software without restriction,
# including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.