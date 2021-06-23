// imports Database class' to invoke query()
const db = require("../database")
const bcrypt = require('bcrypt')

class MemberModel {
    constructor() {
        if(this.instance) return this.instance

        MemberModel.instance = this
    }

    get() {
        return db.query("SELECT * FROM member")
    }

    async getByMatrixNumber(matrixCard) {
        const rows = await db.query("SELECT * FROM member WHERE matrix_card = ?", [matrixCard])
        return rows[0]
    }

    async getByAuth(email) {
        const rows = await db.query("SELECT * FROM member WHERE email = ?", [email])
        return rows[0]
        // bcrypt.compare(password, rows[0]['password'], function(error, result){
        //     if(result == true) return rows[0]
        //     else return rows[0]['email']
        // })
    }

    create(member) {
        return db.query("INSERT INTO member (matrix_card, email, password, name, batch, program_code, degree, address, access_grant) VALUES ()", 
        [member.matrix_card, member.email, member.password, member.name, member.program_code, member.degree, member.address, member.access_grant])
    }

    delete(matrixCard) {
        return db.query("DELETE FROM member WHERE matrix_card = ?", [matrixCard])
    }

    update(id, member) {
        const column = [];
        const content = [];
        
        for (const attribute in member){
            column.push("?? = ?");
            content.push(attribute, member[attribute]);
        }

        const stmt = `UPDATE member SET ${fields.join(", ")} WHERE id = ?`;
        return database.query(stmt, [...params, parseInt(id)]);
    }
}

module.exports = new MemberModel()