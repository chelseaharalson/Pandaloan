using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

public class User
{
    public int userID;
    public string email;
    public string password;
    public string firstName;
    public string lastName;
    public string address;
    public string city;
    public string state;
    public string zipcode;

    public void create()
    {
        string sql = "INSERT INTO Users(email, password, firstName, lastName, address, city, state, zipcode) VALUES('"
        + email + "', '" + CreateMD5Hash(password) + "', '" + firstName + "', '" + lastName + "', '" + address + "', '" + city + "', '" + state + "', '" + zipcode + "')";

        SQLfunctions sf = new SQLfunctions();
        sf.executeSQL(sql);
    }

    public bool login(string pEmail, string pPassword)
    {
        bool success;
        SqlDataReader reader = null;
        string sql = "SELECT userID, firstName, lastName, address, city, state, zipcode FROM Users WHERE email='" + pEmail + "' AND password='" + CreateMD5Hash(pPassword) + "'";

        SQLfunctions sf = new SQLfunctions();
        reader = sf.selectSQL(sql);

        success = reader.HasRows;
        if (success)
        {
            UserInfo user = new UserInfo();
            while (reader.Read())
            {
                user.userID = reader.GetInt32(0);
                user.firstName = reader["firstName"].ToString();
                user.lastName = reader["lastName"].ToString();
                user.address = reader["address"].ToString();
                user.city = reader["city"].ToString();
                user.state = reader["state"].ToString();
                user.zipcode = reader["zipcode"].ToString();
            }
            HttpContext.Current.Session.Add("pl_user", user);
        }
        return success;
    }

    public bool emailExists(string pEmail)
    {
        SqlDataReader reader = null;
        string sql = "SELECT 1 FROM Users WHERE email='" + pEmail + "'";

        SQLfunctions sf = new SQLfunctions();
        reader = sf.selectSQL(sql);

        return reader.HasRows;
    }

    private string CreateMD5Hash(string input)
    {
        // Use input string to calculate MD5 hash
        MD5 md5 = System.Security.Cryptography.MD5.Create();
        byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
        byte[] hashBytes = md5.ComputeHash(inputBytes);
        // Convert the byte array to hexadecimal string
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < hashBytes.Length; i++)
        {
            sb.Append(hashBytes[i].ToString("X2"));
            // To force the hex string to lower-case letters instead of
            // upper-case, use he following line instead:
            // sb.Append(hashBytes[i].ToString("x2"));
        }
        return sb.ToString();
    }
}