const { DataTypes } = require("sequelize");

module.exports = function (db){
    return db.define(
        'memo',
        {
            id: {
                type: DataTypes.INTEGER,
                primaryKey: true
            },            
            text: {
                type: DataTypes.TEXT
            },
            created: {
                type:DataTypes.DATE
            },
            modifide: {
                type: DataTypes.DATE
            }
        },
        {
            timestamps: false
        }
    )
}