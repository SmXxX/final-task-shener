const mysql = require("mysql");
const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const nodemailer = require("nodemailer");

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "final-task",
});

db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("Connected to final-task db!");
});

const app = express();
app.use(
  cors({
    origin: "*",
  })
);
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);

app.use(bodyParser.json());

app.post("/insertuservue", (req, res) => {
  let data = req.body;
  let sql = `INSERT INTO users SET ?`;
  let query = db.query(sql, data, (err) => {
    if (err) {
      if (err.code === "ER_DUP_ENTRY") {
        res.send("Email already in use");
        return false;
      }
      throw err;
    }
    res.send("User updated");
  });
});
//DELETE user from vue
app.post("/deleteuservue", (req, res) => {
  let sql = `DELETE FROM users WHERE token = 1 `;
  let query = db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send("User updated");
  });
});
//GET user from vue
app.post("/getuservue", (req, res) => {
  let data = req.body.user_name;
  let sql = `SELECT * FROM users WHERE user_name = '${data}'`;
  let query = db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    res.send(result);
    console.log(result);
    // return result;
  });
  // console.log(data);
});
app.put("/updatetokenvue", (req, res) => {
  let data = req.body;
  let sql = `UPDATE users SET token = ? WHERE user_id = ? `;
  let query = db.query(sql, [data.token, data.user_id], (err, result) => {
    if (err) {
      throw err;
    }
    res.send(result);
    console.log(result);
    // return result;
  });
  // console.log(data);
});
app.get("/getpostvue", (req, res) => {
  let sql = `SELECT * FROM posts WHERE post_id `;
  let query = db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    res.send(result);
    console.log(result);
    // return result;
  });
  // console.log(data);
});
app.get("/getsinglepostvue/:id", (req, res) => {
  let id = req.params.id;
  let sql = `SELECT * FROM posts WHERE post_id = '${id}' `;
  let query = db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    res.send(result);
    console.log(result);
    // return result;
  });
  // console.log(req.params);
});

app.post("/send", (req, res) => {
  const output = `
  <p>You have a new contact request</p>
  <h3>Contact Details</h3>
  <ul>
  <li>Name: ${req.body.name}</li>
  <li>Email: ${req.body.email}</li>
  <li>Company: ${req.body.company}</li>
  <li>Country: ${req.body.country}</li>
  <li>Phone: ${req.body.phone}</li>
  <li>Website: ${req.body.website}</li>
  </ul>
  <h3>Message</h3>
  <p>${req.body.message}</p>`;
  var transporter = nodemailer.createTransport({
    service: "gmail",
    auth: {
      user: "michaelsgregory97@gmail.com",
      pass: "g_michaels123",
    },
    tls: {
      rejectUnauthorized: false,
    },
  });
  var mailOptions = {
    from: "michaelsgregory97@gmail.com",
    to: "michaelsgregory97@gmail.com",
    subject: "Sending Email",
    text: "Hello buddy!",
    html: output,
  };
  transporter.sendMail(mailOptions, function (error, info) {
    if (error) {
      console.log(error);
    } else {
      console.log("Email sent: " + info.response);
    }
  });
});

app.listen("3000", () => {
  console.log("Server is running on port 3000");
});
