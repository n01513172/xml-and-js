const data = [
    { born: 1870, died: 1924 }, //54
    { born: 1893, died: 1976 }, //83
    { born: 1869, died: 1948 }, //79
    { born: 1901, died: 1989 }, //88
  ];
  
  const age = data.map(x => x.died - x.born)
  const filtered = age.filter(x => x > 75)
  const oldest = filtered.reduce((acc, x) => {
    if (acc > x) {
      return acc
    } else {
      return x
    }
  }, 0)
  
  const oldest1 = data.map(x => x.died - x.born)
    .filter(x => x > 75)
    .reduce((acc, x) => {
      if (acc > x) {
        return acc
      } else {
        return x
      }
    }, 0)
  console.log('******Oldest******')
  console.log(` ${oldest1}`)