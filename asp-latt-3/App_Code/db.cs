using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Configuration;
/// <summary>
/// Summary description for db
/// </summary>
public class db
{
    SqlConnection conn;
    SqlCommand cmd;
    DataTable dt;
	public db()
	{
      
	}

    public void initialize(CommandType ct, string dbcall)
    {
        try
        {
            conn = new SqlConnection();
            cmd = new SqlCommand();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["userscs"].ToString();
            cmd.Connection = conn;
            cmd.CommandType = ct;
            cmd.CommandText = dbcall;
            conn.Open();
        }
        catch
        { }
    }
    //the initialization and parameters for any stored procedure(insert-update-delete)
    public int runprocedure(string procedurename, SortedList paraval)
    {
        initialize(CommandType.StoredProcedure, procedurename);
        for (int x = 0; x < paraval.Count; x++)
        //here is my error "object reference not set to an instance of object"
        //in next line object is empty
        //if is an solution
            if (paraval.GetByIndex(x) != null)
        cmd.Parameters.AddWithValue(paraval.GetKey(x).ToString(), paraval.GetByIndex(x).ToString());
        return executeupdate();
    }
    //the end try and catch and executing
    public int executeupdate()
    {
        try
        {
            int m=cmd.ExecuteNonQuery();
            conn.Close();
            return m;
        }
        catch(SqlException ex)
        {
            conn.Close();
            return ex.Number;
        }
    }
    //to insert update and delete any query does not stored procedure
    public int runupate(string insdelupd)
    {
        initialize(CommandType.StoredProcedure, insdelupd);
        return executeupdate();
    }
    //select
    public DataTable runqury(string select)
    {
    
        initialize(CommandType.Text, select);
        dt = new DataTable();
        dt.Load(cmd.ExecuteReader());
        conn.Close();
        return dt;
    }

}