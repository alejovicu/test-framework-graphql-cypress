var express = require('express');

const {
    postgraphile
} = require("postgraphile");

var app = express();
app.use(
    postgraphile(
        process.env.DATABASE_URL || "postgres://postgres:example@app-db:5432/dummy-app",
        "public", {
            watchPg: true,
            graphiql: true,
            enhanceGraphiql: true,
        }
    )
);
app.listen(4000, () => console.log('go to for playground graphiql http://localhost:4000/graphiql'))