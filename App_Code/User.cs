using System;
using System.Collections.Generic;
using System.Linq;
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

	public User()
	{

	}

    public void create()
    {
        string sql = "INSERT INTO Users(email, password, firstName, lastName, address, city, state, zipcode) VALUES('"
        + email + "', '" + password + "', '" + firstName + "', '" + lastName + "', '" + address + "', '" + city + "', '" + state + "', '" + zipcode + "')";
    }
}