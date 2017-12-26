var mustache = require('mustache'),
    q = require('q'),
    db = require('./fn/db');

exports.getData = function (entity) {
    var d = q.defer();
    var sql = 'select * from '+entity.table+ ' where id = '+entity.id;
    console.log(sql)
    db.load(sql).then(function (rows) {
        d.resolve(rows[0]);
    });
    return d.promise;
}

exports.getCharacter = function () {
    var d = q.defer();
    var sql = 'select * from advisory';
    db.load(sql).then(function (rows) {
        d.resolve(rows);
    });
    return d.promise;
}
