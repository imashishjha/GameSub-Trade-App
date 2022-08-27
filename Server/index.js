
const express = require("express");
const mongoose = require("mongoose");
const e = require("express");
const authRouters = require("./Routes/auth");
const DB="mongodb+srv://ashjha:13112000@cluster0.ga3ufk7.mongodb.net/?retryWrites=true&w=majority";
const app = express();
const PORT = 3000;
const cors = require("cors");
const adminRouter = require("./Routes/admin");
const authRouter = require("./Routes/auth");
app.use(cors());


// middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);

// Connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});