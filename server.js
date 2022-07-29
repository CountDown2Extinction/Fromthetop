import express from "express";

import pg from "pg";

import dotenv from "dotenv";

const app =express();

app.use(express.static('wap'));

dotenv.config();

let PORT = process.env.PORT || 3000

const pool = new pg.Pool({
        connectionString: process.env.DATABASE_URL,
        ssl: process.env.NODE_ENV === "production" ? {rejectUnauthorized: false} : false
});

app.get("/aircrafts", async(req,res)=>{
    await pool.query(`SELECT * FROM aircrafts`).then((data) => {
        try{
        console.log(`thow it in a circle`);
        res.send(data.rows);
    } catch (err){ console.log(err)}
    })
});

app.use((err, req, res, next) => {
    res.sendStatus(500);
  });


app.listen(process.env.PORT || 3000, () => {
    console.log(`MAKE IT DROP`);
  });