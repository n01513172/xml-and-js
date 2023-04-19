Contribution to the project (Topic: bank):

I'm responsible for creating JavaScript files that convert currency using an API. 
Firstly, when I created the JavaScript, I needed to create the mockup HTML page and CSS for testing and display on the page
and, I use the API link: "https://exchangeratesapi.io/" which has to use the URL https://api.apilayer.com/exchangerates_data/.
I define four variables that represent different elements of a form on an HTML page and define a function "getSymbols" that fetches currency symbols from an API and returns them as a list. I also define a function "displaySymbols" that populates two dropdown lists with the currency symbols returned by "getSymbols", setting USD as the default for "From" and CAD as the default for "To".

The code also defines a function "convertCurrency" which calculates the exchange rate of a given amount of currency between two currencies selected from the dropdown lists. It then updates the HTML with the exchange rate information.

The "load" function calls "getSymbols", "displaySymbols", and "convertCurrency" to load the symbols, populate the dropdowns and display the conversion rate when the page is first loaded.

Finally, the "click" event listener for the "convert" button calls the "convertCurrency" function to calculate and display the exchange rate when the user clicks the button.
