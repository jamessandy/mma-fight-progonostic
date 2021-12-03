const displayGreeting = async (greeting, contract) => {
  greeting = await contract.methods.getOracleData().call();
  $(".output").html(greeting);
};

const updateGreeting = (greeting, contract, accounts) => {
  $("#predict").on("click", async (e) => {
    displayGreeting(greeting, contract);
  });
};

async function greetingApp() {
  const web3 = await getWeb3();
  const accounts = await web3.eth.getAccounts();
  const contract = await getContract(web3);
  let greeting;

  displayGreeting(greeting, contract);
  updateGreeting(greeting, contract, accounts);
}

greetingApp();
