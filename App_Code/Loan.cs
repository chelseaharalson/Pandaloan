using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class Loan
{
    public int loanID;
    public int userID;
    public string b_Email;
    public string b_firstName;
    public string b_lastName;
    public DateTime loanDate;
    public double amount;
    public double rate;
    public int term;
    public string grade;
    public bool active;
    public string loanNumber;

    public void addLoan()
    {
        UserInfo user = (UserInfo)HttpContext.Current.Session["pl_user"];

        string sql = "INSERT INTO Loan(userID, b_email, b_firstName, b_lastName, loanDate, amount, rate, term, loanNumber) VALUES("
        + user.userID + ", '" + b_Email + "', '" + b_firstName + "', '" + b_lastName + "', '" + loanDate + "', " + amount 
        + ", " + rate + ", " + term + ", '" + loanNumber + "')";

        SQLfunctions sf = new SQLfunctions();
        sf.executeSQL(sql);
    }

    public void selectLoan(int loanID)
    {
        string sql = "SELECT userID, b_email, b_firstName, b_lastName, loanDate, amount, rate, term, loanNumber "
                    + "FROM Loan WHERE loanID=" + loanID.ToString();

        SQLfunctions sf = new SQLfunctions();
        SqlDataReader reader = sf.selectSQL(sql);

        while (reader.Read())
        {
            userID = int.Parse(reader["userID"].ToString());
            b_Email = reader["b_email"].ToString();
            b_firstName = reader["b_firstName"].ToString();
            b_lastName = reader["b_lastName"].ToString();
            loanDate = DateTime.Parse(reader["loanDate"].ToString());
            amount = double.Parse(reader["amount"].ToString());
            rate = double.Parse(reader["rate"].ToString());
            term = int.Parse(reader["term"].ToString());
            loanNumber = reader["loanNumber"].ToString();
            //grade;
            //active;
        }
    }
}