module.exports = {
    getHomePage: (req, res) => {
        let query = "SELECT * FROM `employees` ORDER BY emp_no ASC";
    
        db.query(query, (err, result) => {
                res.render('index.ejs', {
                    title: "Employee Playground | View Employees",
                    employees: result
                });
        })
    }
}
