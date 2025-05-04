const express = require('express');
const app = express();
const os = require('os');
const port = process.env.PORT || 3000;

app.use(express.static('public'));

// Handle requests to the root
app.get('/', (req, res) => {
  res.send('Welcome to the First  app!');
});

// Handle the /whoami route
app.get('/whoami', (req, res) => {
  res.send(`Served by: ${os.hostname()}`);
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
