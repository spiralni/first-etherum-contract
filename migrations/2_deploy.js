const Box = artifacts.require("Box")

module.exports = async (deployer) => {
  await deployer.deploy(Box)
}

