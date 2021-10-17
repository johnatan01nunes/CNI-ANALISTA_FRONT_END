
//STRING DE CONEXAO

module.exports = {
    development: {
        database: {
            host: 'localhost',
            port: 8889,
            name: 'cni',
            dialect: 'mysql',
            user: 'root',
            password: 'root'
        }
    },
    production:{
        database: {
            host: process.env.DB_HOST,
            host: process.env.DB_PORT
        }
    }
}