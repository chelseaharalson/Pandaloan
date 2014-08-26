using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class SQLfunctions
{
    public void executeSQL(string sql)
    {
        try
        {
            string connectionString = ConfigurationManager.ConnectionStrings["PLConnection"].ToString();
            SqlConnection connect = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connect;
            cmd.CommandText = sql;
            cmd.CommandType = CommandType.Text;
            connect.Open();
            cmd.ExecuteNonQuery();
        }
        catch (Exception e)
        {

        }
    }

    public SqlDataReader selectSQL(string sql)
    {
        SqlDataReader reader = null;
        try
        {
            string connectionString = ConfigurationManager.ConnectionStrings["PLConnection"].ToString();
            SqlConnection connect = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connect;
            cmd.CommandText = sql;
            cmd.CommandType = CommandType.Text;
            connect.Open();
            reader = cmd.ExecuteReader();
        }
        catch (Exception e2)
        {

        }
        return reader;
    }

    public DataSet selectSQLDataSet(string sql)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter adapter = null;
        try
        {
            string connectionString = ConfigurationManager.ConnectionStrings["PLConnection"].ToString();
            SqlConnection connect = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            connect.Open();
            cmd = new SqlCommand(sql, connect);
            adapter = new SqlDataAdapter(sql, connect);
            adapter.Fill(ds);
        }
        catch (Exception e2)
        {

        }
        return ds;
    }
}