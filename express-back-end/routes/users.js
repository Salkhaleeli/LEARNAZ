const express = require("express");
const router = express.Router();

module.exports = (db) => {
  router.get("/users", (req, res) => {
    db.query("SELECT * FROM users;").then((result) => {
      res.send(result.rows);
    });
  });

  return router;
};
