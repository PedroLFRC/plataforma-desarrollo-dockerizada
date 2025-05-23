db.createUser({
  user: "devuser",
  pwd: "devpass",
  roles: [
    {
      role: "readWrite",
      db: "app_db"
    }
  ]
});
