const users = [
    { username: `user1`, email: `user1@email.com` },
    { username: `user2`, email: `user2@email.com` }
  ];
  
  const getUser = (username) =>
    new Promise((resolve) => {
      // get user data by username from users array
      const user = users.find((u) => u.username === username);
      resolve(user);
    });
  
  const getUsers = (userNames) => {
    // get all users for usernames passed as argument
    const promises = userNames.map((username) => getUser(username));
    return Promise.all(promises);
  };
  
  const main = async () => {
    const userNames = [`user2`, `user1`];
    const users = await getUsers(userNames);
    console.log(users);
  };
  
  main();