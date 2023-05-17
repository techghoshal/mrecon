<h1 align="center">
  <br>
  <a href="https://www.youtube.com/@techghoshal"><img src="https://github-production-user-asset-6210df.s3.amazonaws.com/85815644/238946831-ee038dec-c7e7-4b03-afd1-3bd822cedbeb.png"></a>
<h4 align="center">Your Bug Bounty Recon and Vulnerability Detection Made Simple.</h4>

<p align="center">
<a><img title="Made with hart" src="https://img.shields.io/badge/Made%20with-%E2%9D%A4-red"></a>
<a><img title="Made with hart" src="https://img.shields.io/badge/release-v0.0.1-blue"></a>
<br>
<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/techghoshal?style=social">
</p>


<p align="center">
  <a href="#how-it-works-">How it works</a> •
  <a href="#Setup-mrrecon">Setup</a> •
  <a href="#easy-usage">Usage</a> •
  <a href="#for-developers">For Developers</a> •
  <a href="#credits">Credits</a> 
</p>
  
 ---

Introducing MR.RECON, an advanced and versatile bug bounty recon and vulnerability detection tool powered by the efficiency of bash scripting. Designed with the needs of bug bounty hunters and security researchers in mind, this tool combines powerful reconnaissance techniques with automated vulnerability detection to supercharge your bug hunting efforts.
  
  
  
## How it works ?
#### This tool mainly performs 2 tasks
Enumeration - 
1. Effective Subdomain Enumeration from Various Tools
2. Get URLs with open HTTP and HTTPS service
3. JS File Enumeration
4. GitHub code search, Scans for exposed API keys across all of GitHub

Vulnerability Detection - 
1. Subdomain takeover vulnerability checker
2. Finds 37+ Vulnerability<br>
So basically, this is an autmation script for your initial recon and Vulnerability Detection in bugbounty

  
## Setup MR.RECON

MR.RECON requires different tools to run successfully. Run the following command to install the all requirments-

```bash
$ git clone git@github.com:techghoshal/mrecon.git
$ cd mrecon
$ sudo ./install.sh
```

#### GitHound config.yml
Make sure your github username and password is in "quotation marks" 
```bash
# Required
github_username: ""
github_password: ""

# Optional (comment out if not using)
# github_totp_seed: "ABCDEF1234567890" # Obtained via https://github.com/settings/security
```

#### Two-Factor Authentication

If GitHound is logged into your GitHub account, two-factor authentication may kick in. You can pass 2FA codes to GitHound with `--otp-code`. Otherwise, GitHound will prompt you for it when it starts up. You can also [supply your 2FA seed](https://github.com/tillson/git-hound/pull/24) in the config and you'll never have to worry about 2FA again. Grab the 2FA seed by decoding the barcode that GitHub shows during the 2FA setup process.
  
`You can also provie your own CONDIF file with your API Keys for subdomain enumeration with subfinder (/root/.config/subfinder/provider-config.yaml) and amass (amass_config.ini)`
  
 ## Easy Usage

```bash
./mrecon -h
```
```bash
 [HELP]
   mrecon -enum target.com
   mrecon -enumExploit target.com
   mrecon -exploit finalSubdomain.txt waybackurls.txt
  ```

  
### Modes
#### 1. Enumuration Mode - 
Subdomain and JS File Enumuration, Get URL, Github code search, Find API Keys across all of GitHub
```bash
mrecon -enum target.com
```

#### 2. Exploitation Mode - 
Subdomain takeover and finds 37+ vulnerability
```bash
mrecon -exploit finalSubdomain.txt waybackurls.txt
```
#### 3. Enumuration Exploitation Mode - 
Enumuration and Exploitation run together
```bash
mrecon -enumExploit target.com
```

## For Developers
If you have any queries, you can always contact me on <a href="https://twitter.com/techghoshal">twitter(@techghoshal)</a>
  

## Credits
I would like to express my gratitude to all of the open source projects that have made this tool possible and have made recon tasks easier to accomplish.
  

  
  
