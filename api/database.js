require("dotenv").config()

const mysql = require('mysql')

class Database {
    constructor() {
        // This class' instance is "instance".
        if(this.instance) return this.instance

        Database.instance = this

        // Local DB connection setup.
        this.pool = mysql.createPool({
            connectionLimit: process.env.DATABASE_CONNECTION_LIMIT || 10,
            host: process.env.DATABASE_HOST,
            user: process.env.DATABASE_USER,
            password: process.env.DATABASE_PASSWORD,
            database: process.env.DATABASE_NAME,
        })
    }

    // I believe this is called "wrapper", to make querying easier.
    query(sqlStatement, params) {
        return new Promise((resolve, reject) => {
            this.pool.query(sqlStatement, params, (err, result) => {
                if(err) return reject(err)
                return resolve(result)
            })
        })
    }
}

module.exports = new Database()
// export default Database