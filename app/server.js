const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.json({ message: 'Hello from aws-terraform-docker-demo' });
});

app.listen(port, () => console.log(`App listening on ${port}`));
