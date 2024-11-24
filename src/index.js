const express     = require("express");
const {Sequelize} = require("sequelize");
const app         = express();
const db          = new Sequelize("postgres://postgres:postgres@localhost:5432/postgres");
const Memo        = require("./models/memo")(db);


app.get("/", (req, res) =>{
    res.json({
        massage : "hello world"
    });
});

app.get("/memos", async (req, res) =>{
    const myMemos = await Memo.findAll();
    res.end();
});

app.get("/healthcare", async function (request, response) {
    let db_connector = false;
    try {
        await db.authenticate(); 
        db_connector = true;
    }
    catch {
        db_connector = false
    }
    response.json({
        all_system : "up",
        db_connector,
    });
});

app.listen(process.env.PORT ?? 8000, ()=>{
    console.log(`appplication running on post ${process.env.PORT ?? 8000}`);
});






