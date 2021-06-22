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
        return db.query("INSERT INTO member () VALUES ()", 
        [member.matrix_card, member.email, member.password, member.name, member.program_code, member.degree, member.address, member.access_grant])
    }

    delete(matrixNumber) {
        return db.query("DELETE FROM member WHERE matrix_number = ?", [matrixNumber])
    }
}

module.exports = new MemberModel()