// imports Database class' to invoke query()
const db = require("../database")

class MemberModel {
    constructor() {
        if(this.instance) return this.instance

        MemberModel.instance = this
    }

    get() {
        return db.query("SELECT * FROM member")
    }

    async getByMatrixNumber(matrixNumber) {
        const rows = await db.query("SELECT * FROM member WHERE matrix_number = ?", [matrixNumber])
        return rows[0]
    }

    create(member) {
        return db.query("INSERT INTO member () VALUES ()", [])
    }

    delete(matrixNumber) {
        return db.query("DELETE FROM member WHERE matrix_number = ?", [matrixNumber])
    }
}

module.exports = new MemberModel()