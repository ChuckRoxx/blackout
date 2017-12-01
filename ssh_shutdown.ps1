# A short script to shutdown a remote ubuntu session via ssh using the windows power shell
#
# 1. Install the powershell module 'plink' suing chocolatey
# 2. Configure ssh access for public key authentification
# 3. IN sudoers set the 'shutdown'-command to 'nopasswd'

$hostname=""
$username=""
$keypath=""

plink -ssh -i $keypath $username@$hostname "sudo shutdown"
