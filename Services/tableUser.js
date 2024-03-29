let connection = require('./dbMarioMania')

/**
 * adds user into db
 * @param userData
 * @param res
 */
function addUser(userData, res) {
    connection.query(
        'INSERT INTO `user` (`name`, `cohort`, `favRacer`) VALUES (?, ?, ?)',
        [userData.name, userData.cohort, userData.favRacer],
        function (err, result) {
            if (err) {
                res.send({"success": false, "data": ['unexpected error']})
            } else {
                res.send({"success": true, "data": ['user created!']})
            }
        })
}

/**
 * gets the ids of all the users recorded in db
 *
 * @param callback
 * @param res
 */
function getUserids(callback, res) {
    connection.query(
        'SELECT `id` FROM `user`',
        function (err, userids) {
            if(err) {
                res.send({"success": false, data: ['Cannot validate User']})
            }else {
                callback(err,userids)
            }
        }
    )
}

module.exports.addUser = addUser
module.exports.getUserids = getUserids
