const express = require("express");
const app = express();

const PORT = process.env.PORT || 8080;

app.use(express.json());

app.get("/", (req, res) => {
  res.send("Server is running");
});

// for docker & kubernetes testing
app.get("/exit", (req, res) => {
  res.send("Server stopped");
  process.exit(0);
});

app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
