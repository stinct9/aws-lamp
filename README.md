I'm hoping there would be more people like me who set up LAMP server on AWS Linux EC2 Instance.
I've done it multiple times and realized that it's time to write a script to automate the setup.

I've shared the script on [GitHub](https://github.com/stinct9/aws-lamp). Detailed below are the steps to be followed.

#Step 0: Clone the repository
Use git clone to clone the repository and set necessary permissions

```
git clone https://github.com/stinct9/aws-lamp.git>
```
```
cd aws-lamp</code>
```
```
chmod +x 1-aws.sh 2-aws.sh 3-aws.sh
```

#Step 1: Install php & MySQL
Next installs php, Mysql and other dependencies.

```
sudo ./1-aws.sh
```

Once the script has completed running, please <code>exit</code> and login to the server again.

#Step 2: Setting Permissions

Next run 
```
sudo ./2-aws.sh
```

#Step 3: Installing phpMyAdmin

Next install phpMyAdmin with the step 3 script. Here first it is very important to change the IP address field in the script 

```
sudo nano 3-aws.sh
```

and modify the below line with your IP address. Replace `your-ipaddress` with your actual IP address. It would be something like `49.12.23.192`. You can check your real ip address from [whatismyip.com](https://www.whatismyip.com/)

```
sudo sed -i -e 's/127.0.0.1/your-ipaddress/g' /etc/httpd/conf.d/phpMyAdmin.conf
```

Next run the script
```
sudo ./3-aws.sh
```
This will install phpmyadmin

#Conclusion
The above will setup a bare LAMP server on AWS EC2.
