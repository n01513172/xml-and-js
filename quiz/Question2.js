async function fun(...args)
 {
    const A = args.length;
    try {
        try {
            return await new Promise(function (resolve, reject) {
                if (A > 0) {
                    resolve(args);
                } else {
                    reject('No arguments were passed');
                }

            });
        } catch (err) {
            return 'ERROR: No arguments passed';
        }
    } catch (err1) {
        return console.log(err1.message);
        
    }
}
const main=async()=>{
 const x=await fun(1,2,3);
 const y=await fun('value',15,{});
 const z=await fun(); 
 console.log(x);
 console.log(y);
 console.log(z);
}
main();