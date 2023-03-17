const timeout = (ms = 1000) => {
    return new Promise ((resolve) => {
        return setTimeout(resolve, ms);
    })
}

const generateRandomNumber = () => {
    return Math.floor(Math.random() * 40);
}

const generateData = async () => {
    await timeout();
    return Array.from({ length: 20}, generateRandomNumber);
}

const convertToFeet = async (meters) => {
    await timeout(3500);
    const feet = meters * 3.2808;
    return logResult(meters, feet);
}

const processData = async (data) => {
    await Promise.all(data.map(value => convertToFeet(value)))
}

const logResult = (meters, feet) => {
    return console.log(`Converted ${meters}m to ${feet}ft`);
}

const main = async () => {
    console.log("Begin");
    const newData = await generateData();
    await processData(newData);
    console.log("Finish");
}

main();