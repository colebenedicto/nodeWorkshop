const bodyParser = require("body-parser");
const express = require("express");
const mysql = require("mysql");

const app = express();

const port = 3000;

//middleware - value parser--parse body requests
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);

app.use(bodyParser.json());

const connection = mysql.createConnection({
  host: "localhost",
  database: "test_db",
  user: "root",
  port: 3307,
});

app.get("/healthCheck", (req, res) => {
  connection.connect();
  connection.query("SELECT * FROM users", (error, result) => {
    if (error) {
      res.status(500);
      return res.send(error);
    }
    res.send(result);
  });
  connection.end();
});

app.get("/params/:id", (req, res) => {
  res.send(req.query.something);
});

app.post("/post", (req, res) => {
  res.status(400);
  req.send(req.body.id);
});

// development task

// app.post("/v1/video/create", (req, res) => {
//   const {} = req.body;
// });

app.listen(port, () => {
  console.log(`server has started ${port}`);
});
