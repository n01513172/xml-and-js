API_KEY="7e332702aaf349f2939fc234b9bdb4b9";

const from = document.querySelector(".from select");
const to = document.querySelector(".to select");
const amount = document.querySelector("form input");
const btn = document.querySelector("form button");

const getSymbols = async () => {
   const result = await fetch(`https://api.apilayer.com/exchangerates_data/symbols`, {
    method: 'GET',
    redirect: 'follow',
    headers: {"apikey": `${API_KEY}` }
  })


const data = await result.json();
return data.symbols;
};

const displaySymbols = async () => {
    const fromList = document.getElementById('from-currency-list');
    const toList = document.getElementById('to-currency-list');
    const symbols = await getSymbols();

    // create an array of option elements
    const options = Object.keys(symbols).map(symbol => {
      return `<option value="${symbol}" ${symbol === 'USD' ? 'selected' : ''}>${symbol}</option>`;
    });

    // set the innerHTML of the select elements to the options array
    fromList.innerHTML = options.join('');
    toList.innerHTML = Object.keys(symbols).map(symbol => {
      return `<option value="${symbol}" ${symbol === 'CAD' ? 'selected' : ''}>${symbol}</option>`;
    }).join('');
  };

const convertCurrency = async () => {

    const exchangeRateTxt = document.querySelector("form .exchange-rate");
    const amountInput = parseFloat(amount.value);

    //validate input amount
    if (amountInput <= 0) {
        exchangeRateTxt.innerText = 'Enter Valid Amount';
        return;
    }
    exchangeRateTxt.innerText = "Retrieving current rate...";

    const result = await fetch(`https://api.apilayer.com/exchangerates_data/convert?to=${to.value}&from=${from.value}&amount=${amount.value}`, {
        method: 'GET',
        redirect: 'follow',
        headers: {"apikey": `${API_KEY}` }
      })

    

    const data = await result.json();
    const exchangeRate = await data.result.toFixed(2);
    exchangeRateTxt.innerText = `${amountInput} ${from.value} = ${exchangeRate} ${to.value}`;

};

const load = async () => {
    await getSymbols();
    await displaySymbols();
    await convertCurrency();
  };
window.addEventListener('load', load);

btn.addEventListener("click", e =>{
    e.preventDefault(); 
    convertCurrency();
});