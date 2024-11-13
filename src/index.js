const express = require("express")
const app     = express();


app.get("/", (req, res) =>{
    res.json({
        massage : "hello world"
    })
});

app.get("/healdthcare", (request, response)=>{
    response.json({
        string: "Hello World",
        number: 120,
        bullien: true,
    });
});

app.listen(process.env.PORT ?? 8080, ()=>{
    console.log(`appplication running on post ${process.env.PORT ?? 8080}`);
});