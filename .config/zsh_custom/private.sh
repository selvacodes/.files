export VPN_HOST=https://myvpn.trstone.com
export VPN_USER=sganapathy

alias oc='sudo openconnect -u $VPN_USER -b -l --pid-file=$HOME/openconnect.pid $VPN_HOST --authgroup=RosettaStone'
alias ocd='sudo kill `cat ~/openconnect.pid`'
