/**
 * date: 2017-03-29 18:22:25
 * author: AllocatorXy
 *
 ********************************
 * usage:
 *        /get?act=load&thing=xxx
 *            res: { err: 0, data }
 *
 *
 ********************************
 */

'use strict';
require('oneapm');

/**
 * server
 * port: 80
 */
const ex = require('express');
const sv = ex();
sv.listen(80);

// middleware
const st = require('express-static');
sv.use(st('_site/'));

/**
 * connect to database
 * db: database obj
 */
const mySQL = require('mysql');
const db = mySQL.createConnection({
  host: 'localhost',
  user: 'root',
  password: '298319',
  database: 'haozhi'
});

// normal get
sv.get('/get', (req, res) => {
  const th = req.query.thing;
  if (!th) {
    res.send({ err: 1, msg: 'req err' });
    res.end();
  } else {
    db.query(`SELECT * FROM ${th}`, (err, data) => {
      if (!err) {
        res.send({ err: 0, data });
        res.end();
      } else {
        res.send({ err: 1, msg: 'data query err' });
        res.end();
      }
    });
  }
});

// get page
sv.get('/page', (req, res) => {
  const act = req.query.act,
        t = req.query.tab;
  let sql = null;
  // act
  if (act == 'nav') {
    sql = `SELECT page FROM ${t} WHERE page IS NOT NULL`;
  } else if (act == 'cg') {
    const p = req.query.p,
          c = req.query.c, // 取多少个数据
          o = (p - 1) * c; // 定位取的页
    sql = `SELECT * FROM ${t} LIMIT ${o}, ${c}`;
  }
  // query
  db.query(sql, (err, data) => {
    if (!err) {
      res.send({ err: 0, data });
      res.end();
    } else {
      res.send({ err: 1, msg: 'data error' });
      res.end();
    }
  });
});

