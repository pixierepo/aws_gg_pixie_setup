# aws_gg_pixie_setup


## Description

This script automates the installation and dependencies needed for AWS Greengrass. 

Download this git repo and execute:
```
sudo ./aws_setup.sh
```

The script will install python and python2 packages and wget, which are required to run Greengrass. 
It also downloads the Greengrass dependency checker which you can execute with: 
```
sudo ./check_ggc_dependencies | more
```
The script is located inside:
```
aws-greengrass-samples/greengrass-dependency-checker-GGCv1.7.0
```

After you have confirmed that all the dependencies are installed you have unzip the folder greengrass-armv7l-1.7.0.tar.gz with:
```
sudo tar -xzvf greengrass-armv7l-1.7.0.tar.gz -C /
cd /greengrass/certs
wget -O root.ca.pem https://www.amazontrust.com/repository/AmazonRootCA1.pem
```

Then create a Greengrass group in the AWS IoT console and download the key to the PixieBoard.

Once you have the group keys in the PixieBoard you can execute:
```
sudo tar -xzvf hash-setup.tar.gz -C /greengrass
```

## Run Greengrass
To run Greengrass on the PixieBoard go to:
```
cd /greengrass/ggc/core
```
Execute:
```
sudo ./greengrassd start
```

You should now see in the IoT Console a new connexion. 
