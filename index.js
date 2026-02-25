const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send(`
    <h1>Velkommen!</h1>
    <p>Dette er SSR-oppgaven min.</p>
    <a href="/deltagere-1">Se deltagere</a>
  `);
});

app.get("/deltagere-1", (req, res) => {
  res.send(`
    <h1>Deltagere</h1>
    <ul>
      <li>Ola</li>
      <li>Kari</li>
      <li>Emma</li>
      <li>Jonas</li>
    </ul>
    <a href="/">Tilbake til forsiden</a>
  `);
});

app.listen(port, () => {
  console.log(`Server kjører på http://localhost:${port}`);
});