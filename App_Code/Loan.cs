using System;
using System.Collections.Generic;
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
}