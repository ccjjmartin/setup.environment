# Creating a BitBucket Account

![BitBucket Logo With Copy](../../images/bitbucket/bitbucket_logo_copy-with-logo.png)


## Step 3 - Add the SSH Key to BitBucket

### Adding the SSH Key to [BitBucket.com](https://bitbucket.com "BitBucket.com")

#### Open any modern web-browser.
![Modern Browsers](../../images/github/modern-browsers.JPG)

#### Navigate to [BitBucket.com](https://bitbucket.com "BitBucket.com") and Login
![Login](../../images/bitbucket/bitbucket-create-account_1.JPG)

![View Profile](../../images/bitbucket/bitbucket-create-ssh-key_1.JPG)

#### Open BitBucket Settings and Navigate to ```SSH and GPG Keys``` Link
##### View Profile and Open BitBucket Settings
![View Profile](../../images/bitbucket/bitbucket-create-ssh-key_1.JPG)

![Open BitBucket Settings](../../images/bitbucket/bitbucket-create-ssh-key_1a.JPG)

##### Navigate to ```SSH Keys``` Link
![Navigate to ```SSH Keys``` Link](../../images/bitbucket/bitbucket-create-ssh-key_2.JPG)

#### Click *Add Key*
![Click *Add Key*](../../images/bitbucket/bitbucket-create-ssh-key_6.JPG)

#### Enter SSH Key
> Use a Title that will specify exactly what Device you are accessing your BitBucket account with.

> Example:  ```ACC-Computer_Lab_Seat_5```

![Click *Add SSH Key*](../../images/bitbucket/bitbucket-create-ssh-key_8.JPG)

##### Get *Public* SSH Key for bitbucket
You must have the *right* text to enter into BitBucket. There were two files created with your SSH Key: ```id_rsa``` and ```id_rsa.pub```.

The ```.pub``` stands for **public** in this instance and will be the file used.  Instead of the complicated process of trying to find the file on your local system, there is a very quick and short command you can execute within Git Bash to retrieve the code for pasting in BitBucket:
```
clip < ~/.ssh/id_rsa.pub
```

![Click *Add Key*](../../images/bitbucket/bitbucket-create-ssh-key_7.JPG)

If successful, you will see a screen similar to this:

![Click *Add SSH Key*](../../images/bitbucket/bitbucket-create-ssh-key_9.JPG)
