# election-example
How to Build Ethereum Dapp
[link](https://www.youtube.com/watch?v=3681ZYbDSSk&feature=youtu.be) for video tutorial
[step by step tutorial](http://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial)
with all commands like `$ npm install -g truffle`, `$ truffle unbox pet-shop` and so on.


### My truffle migrate

```ebazhanov@EvgeniiBazhanov ~/D/election-example> truffle migrate
⚠️  Important ⚠️
If you're using an HDWalletProvider, it must be Web3 1.0 enabled or your migration will hang.


Starting migrations...
======================
> Network name:    'development'
> Network id:      5777
> Block gas limit: 6721975


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0x8aab5ede1bf8a9bee7dd74fafdd6c8401904c9a9c4baba1b1716d568dde8e7ef
   > Blocks: 0            Seconds: 0
   > contract address:    0xC5FeCDF3038e613144be3A45bFb603dA61feE76C
   > account:             0x69bBc95fCd739084958907B864a12Fd671CE8Fcc
   > balance:             99.99430184
   > gas used:            284908
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00569816 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00569816 ETH


2_initial_migration.js
======================

   Deploying 'Election'
   --------------------
   > transaction hash:    0x2cab9c2287998cd8dd37ba594a5bde3ef5e7ccfa178299436739c63f15ae3efd
   > Blocks: 0            Seconds: 0
   > contract address:    0x8E467EE7C018bd5B6b84a7503E1e24AF5d1E6B6E
   > account:             0x69bBc95fCd739084958907B864a12Fd671CE8Fcc
   > balance:             99.98949376
   > gas used:            198370
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.0039674 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:           0.0039674 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.00966556 ETH
```

### truffle develop

```ebazhanov@EvgeniiBazhanov ~/D/election-example> truffle develop
Truffle Develop started at http://127.0.0.1:9545/
```

```ebazhanov@EvgeniiBazhanov ~/D/election-example> truffle console
   truffle(development)> Election.deployed().then(function(instance) {app=instance})
   undefined
   truffle(development)> app.address
   '0x8E467EE7C018bd5B6b84a7503E1e24AF5d1E6B6E'
   truffle(development)> app.candidate()
   'Candidate 1'
   truffle(development)>
   ```

## TIPS

to avoid the issue below check if your 'Ganash' is running

```
ebazhanov@EvgeniiBazhanov ~/D/election-example> truffle migrate
Could not connect to your Ethereum client. Please check that your Ethereum client:
    - is running
    - is accepting RPC connections (i.e., "--rpc" option is used in geth)
    - is accessible over the network
    - is properly configured in your Truffle configuration file (truffle-config.js)
```