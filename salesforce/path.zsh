# set up the SFDC perforce port
export P4PORT=ssl:p4proxy.soma.salesforce.com:1999

export NODE_EXTRA_CA_CERTS="$HOME/Code/npm-sfdc-certs.pem"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
