const db = require("../database")

class EventModel {
    constructor() {
        if(this.instance) return this.instance
        EventModel.instance = this
    }

    get() {
        return db.query("SELECT * FROM event")
    }

    async getEventById(id) {
        const rows = await db.query("SELECT * FROM event WHERE event_id = ?", [id])
        return rows[0]
    }

    create(event){
        var today= new Date().toISOString().slice(0, 10);
        return db.query("INSERT INTO event (event_title, event_category, event_venue, posted_on, open_for, closed_on, event_details, event_url, event_date, event_pic1)" +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 
            // [event.event_title, event.event_category, event.event_venue, today, event.open_for, event.closed_on, event.event_details, event.event_url, event.event_date, event.event_pic1]
            [event.event_title, event.event_category, event.event_venue, today, today, today, event.event_details, "", event.event_date, ""]
        
        )
    }

    delete(eventId) {
        return db.query("DELETE FROM event WHERE event_id = ?", [eventId])
    }

    update(id, event) {
        const column = [];
        const content = [];
        
        for (const attribute in event){
            column.push("?? = ?");
            if(attribute == null) continue;
            content.push(attribute, event[attribute]);
        }

        const stmt = `UPDATE \`event\` SET ${column.join(", ")} WHERE \`event_id\` = ?`;
        return db.query(stmt, [...content, parseInt(id)]);
    }

}

module.exports = new EventModel()