// import and require mysql2
const mysql = require('mysql2');
const inquirer = require('inquirer');

// connect to mysql database
const db = mysql.createConnection(
  {
    host: 'localhost',
    // MySQL username,
    user: 'root',
    // TODO: Add MySQL password here
    password: 'maiagrim',
    database: 'employee_db'
  },
  console.log(`Connected to the employee_db database.`)
);
function init(){
  inquirer
  .prompt([
    {
      type:'list',
      name:'userchoice',
      message:'Please select:',
      choices:['show departments','add department'],
    },
  ]).then((userInput) => {
    switch(userInput.userchoice) {
      case "show departments":
        showDepartments();
        break;
      case "add department":
        addDepartment();
        break;
      default:
        userTeam();
    }
  })
}
  function showDepartments(){
    const sql = `SELECT * FROM department`;
  
  db.query(sql, (err, rows) => {
    if (err) {
      console.log(err)
       return;
    }
    console.table(rows);
    init();
  });
  }

  function addDepartment(){
    inquirer
    .prompt([
        {
      name:'name',
      message:'whats the department name?',
    }
    ]).then((userInput) => {
        const sql = `INSERT INTO department (name) VALUES (?)`;
        const params = [userInput.name];
  
  db.query(sql, params, (err, result) => {
    if (err) {
      console.log(err)
      return;
    }
    console.log('department added!')
    init();
  });
    })
  } 


  init();