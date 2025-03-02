const config = require('./dbConfig'),
    connectionToServer = require('mssql');

const getEmployees = async () => {
    try {
        let pool = await sql.connect(config);
        let employees = pool.request().query("Select * from emp");
        console.log(employees);
        return employees;
    }
    catch (error) {
        console.log(error);
    }
}

module.exports = {
    getEmployees
}