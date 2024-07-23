# Ubuntu Update Script

A simple script for updating Snap and APT packages on Linux.


## Usage

``` shell
# Clone repository 
git clone git@github.com:KnutStorvestre/ubuntu-update-script.git

# Change directory
cd ubuntu-update-script

# Make script executable
chmod +x ubuntu-update-packages.sh

# Run script
./ubuntu-update-packages.sh
```

## Make Script Globally Accessible

``` shell

# copy script to the local binary directory
sudo cp ubuntu-update-packages.sh /usr/local/bin/ubuntu-update-packages.sh

# Verify the script is executable
sudo chmod +x /usr/local/bin/ubuntu-update-packages.sh

# Run the script from anywhere
ubuntu-update-packages.sh
```


