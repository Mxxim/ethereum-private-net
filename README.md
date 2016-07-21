#Ethereum-private-net
A private chain to connect peer to peer on Ethereum.

Firstly,create three new account in your terminal through geth,password all is `123456789`.Create **keystore** folder in your-project-directory/geth.

Secondly,if your OS is Ubuntu,account information will be in `~/.ethereum/keystore`,copy the three new account file to **keystore** folder of your project.

You must be sure your all path is same as **Ethereum-private-net**. What you have to rewrite is geth_private_start.sh,including **--etherbase**.

Thirdly,excute geth_private_start.sh,such as `bash geth_private_start`.In the javascript console,excute `admin.nodeInfo` to check your enode,such as "enode://50d92a3f976cf026aa5ebad0c20d493b9f05aac4c0ed3240065af6a940765292a31e3208d7d61f0613592e5a6a007a1627f100bc513a0ea04469a5cc82333dfa@[::]:30304?discport=0",input your ip address replace [::],such as "enode://50d92a3f976cf026aa5ebad0c20d493b9f05aac4c0ed3240065af6a940765292a31e3208d7d61f0613592e5a6a007a1627f100bc513a0ea04469a5cc82333dfa@192.168.31.112:30304?discport=0", then in the same javascript console of another computer node,excute `admin.addPeer("enode://........")`.Well,excute `admin.peers`,you will see two computer node have connected,but if the result is an empty array,it means two nodes have not connected.If connecting successfully,excute `miner.start()`,the two connecting nodes will synchronize blocks.
