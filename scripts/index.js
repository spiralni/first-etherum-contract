module.exports = async function main(callback) {
    try {
        //const accounts = await web3.eth.getAccounts()
        //console.log(accounts)

        const Box = artifacts.require('Box')
        const box = await Box.deployed()

        await box.store(23)

        const value = await box.retrieve()
        console.log(`Box value is ${value}`)
        callback(0)
    } catch (e) {
        console.log(e)
        callback(1)
    }
}