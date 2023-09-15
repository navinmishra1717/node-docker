const express = require("express");
const app = express();
const router = express.Router();

const path = __dirname + "/views/";
const port = 3000;

router.use(function (req, res, next) {
  console.log("/" + req.method);
  next();
});

app.use(express.static(path));

router.get("/", function (req, res) {
  res.sendFile(path + "index.html");
});

router.get("/sharks", function (req, res) {
  res.sendFile(path + "sharks.html");
});

app.use("/", router);

app.listen(port, function () {
  console.log("Example app listening on port 3000!");
});
