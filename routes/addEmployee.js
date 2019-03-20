const fs = require('fs');

module.exports = {
    addEmployeePage: (req, res) => {
        res.render('add-employee.ejs', {
            message: ''
        });
    },
    addPlayer: (req, res) => {
        if (!req.files) {
            return res.status(400).send("No files were uploaded.");
        }

        let message = '';
        let first_name = req.body.first_name;
        let last_name = req.body.last_name;
        let employeeQuery = "SELECT * FROM `employees` WHERE first_name = '" + first_name + "'";

        db.query(employeeQuery, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
            if (result.length > 0) {
                message = 'Username already exists';
                res.render('add-employee.ejs', {
                    message
                });
            } else {
              // let query = "INSERT INTO `players` (first_name, last_name, position, number, image, user_name) VALUES ('" +
                //     first_name + "', '" + last_name + "', '" + position + "', '" + number + "', '" + image_name + "', '" + username + "')";
                // db.query(query, (err, result) => {
                //     if (err) {
                //         return res.status(500).send(err);
                //     }
                //     res.redirect('/');
                // });````````
            }
        });
    }
};
