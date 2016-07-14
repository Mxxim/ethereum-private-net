#Ethereum-private-net
A private chain to connect peer to peer on Ethereum.

Firstly,create three new account in your terminal through geth,password all is `123456789`.Create **keystore** folder in the project root directory.

Secondly,if your OS is Ubuntu,account information will be in `~/.ethereum/keystore`,copy the three new account file to **keystore** folder of your project root directory.

You must be sure your all path is same as **Ethereum-private-net**. What you have to rewrite is geth_private_start.sh,including **--etherbase**. 
