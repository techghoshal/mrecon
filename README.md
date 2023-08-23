<h1 align="center">
    <a href="https://www.youtube.com/@techghoshal"><img src="https://github.com/techghoshal/Fix-Grub-Boot-Menu/assets/85815644/26ed3a3f-a1e6-452c-b2ac-cac5c3d7478e"></a>
  <br>
  <a href="https://www.youtube.com/@techghoshal"><img src="https://github-production-user-asset-6210df.s3.amazonaws.com/85815644/238946831-ee038dec-c7e7-4b03-afd1-3bd822cedbeb.png"></a>
<h4 align="center">Your Bug Bounty Recon and Vulnerability Detection Made Simple</h4>

<p align="center">
<a><img title="Made with hart" src="https://img.shields.io/badge/Made%20with-%E2%9D%A4-red"></a>
<a><img title="Made with hart" src="https://img.shields.io/badge/release-v0.0.2-blue"></a>
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

Enumeration - 
1. Effective Subdomain Enumeration from Various Tools
2. Get URLs with open HTTP and HTTPS service
3. JS File Enumeration

  
## Setup MR.RECON

MR.RECON requires different tools to run successfully. Run the following command to install the all requirments-

```bash
$ git clone git@github.com:techghoshal/mrecon.git
$ cd mrecon
$ sudo ./install.sh
```
  
`You can also provie your own CONDIF file with your API Keys for subdomain enumeration with subfinder (/root/.config/subfinder/provider-config.yaml) and amass (amass_config.ini)`
  
 ## Easy to use

```bash
$ ./mrecon -h
```
```bash
$ ./mrecon -enum target.com
  ```

  
### Modes
#### 1. Enumuration Mode - 
Subdomain and JS File Enumuration, Get URL, Find API Keys From JS File
```bash
$ ./mrecon -enum target.com
```

## For Developers
If you have any queries, you can always contact me on <a href="https://twitter.com/techghoshal">twitter(@techghoshal)</a>
  

## Credits
I would like to express my gratitude to all of the open source projects that have made this tool possible and have made recon tasks easier to accomplish.
  

  
  
