echo " "
echo " "
echo "Beginning Octoprint Raspian Install...Running apt-install"
echo " "
echo " "
cd ~
sudo apt update
sudo apt install python3-pip python3-dev python3-setuptools python3-venv git libyaml-dev build-essential
mkdir OctoPlotter && cd OctoPlotter
python3 -m venv youPlot
source youPlot/bin/activate
echo " "
echo " "
echo "PIP it real good - Install Octorprint python packages..."
echo " "
echo " "
pip install pip --upgrade
pip install --no-cache-dir octoprint
rm -r ~/.cache/pip
echo " "
echo " "
echo "Adding user to the dialout group and tty (teletypewriter) in order to access the serial ports, before starting OctoPrint...\n\nAttempting to Serve....."
echo " "
echo " "
sudo usermod -a -G tty pi
sudo usermod -a -G dialout pi
/home/pi/OctoPlotter/youPlot/bin/octoprint serve
sudo apt install haproxy
echo " "
echo " "
echo "Open up on port 80"
echo " "
echo " "
