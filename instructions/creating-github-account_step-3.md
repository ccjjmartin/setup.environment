# Creating a GitHub Account

![Octocat](../images/github/Octocat.png)


## Step 3 - Add the SSH Key to GitHub

### Adding the SSH Key to [GitHub.com](https://github.com "GitHub.com")

#### Open any modern web-browser.

#### Navigate to [GitHub.com](https://github.com "GitHub.com") and Login
![Login](../images/github/github-create-account_1.JPG)

#### Open User Settings and Navigate to ```SSH and GPG Keys``` Link
##### Open User Settings
![Open User Settings](../images/github/github-create-ssh-key_1.JPG)

##### Navigate to ```SSH and GPG Keys``` Link
![Navigate to ```SSH and GPG Keys``` Link](../images/github/github-create-ssh-key_2.JPG)

#### Click *New SSH Key*
![Click *New SSH Key*](../images/github/github-create-ssh-key_6.JPG)

#### Enter SSH Key
> Use a Title that will specify exactly what Device you are accessing your GitHub account with.

> Example:  ```ACC-Computer_Lab_Seat_5```

![Click *Add SSH Key*](../images/github/github-create-ssh-key_7.JPG)

##### Get *Public* SSH Key for GitHub
You must have the *right* text to enter into GitHub. There were two files created with your SSH Key: ```id_rsa``` and ```id_rsa.pub```.

The ```.pub``` stands for **public** in this instance and will be the file used.  Instead of the complicated process of trying to find the file on your local system, there is a very quick and short command you can execute within Git Bash to retrieve the code for pasting in GitHub:
```
clip < ~/.ssh/id_rsa.pub
```

![Click *Add SSH Key*](../images/github/github-create-ssh-key_8.JPG)

If successful, you will see a screen similar to this:

![Click *Add SSH Key*](../images/github/github-create-ssh-key_9.JPG)
