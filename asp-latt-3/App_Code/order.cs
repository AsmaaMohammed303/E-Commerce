using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
using System.Data;
public class order:maintable
{
    private int _orderno;
   // private DateTime _orderdate;
    private string _shipname;
    private string _shipcity;
    private string _shiparea;
    private string _shipaddress;
    private string _members;
    //private string _orddetails;

    public int orderno
    {
        get
        {
            return _orderno;
        }
        set
        {
            _orderno = value;
        }
    }

    //public DateTime orderdate
    //{
    //    get
    //    {
    //        return _orderdate;
    //    }
    //    set
    //    {
    //        _orderdate = value;
    //    }
    //}

    public string shipname
    {
        get
        {
            return _shipname;
        }
        set
        {
            _shipname = value;
        }
    }

    public string shipcity
    {
        get
        {
            return _shipcity;
        }
        set
        {
            _shipcity = value;
        }
    }

    public string shiparea
    {
        get { return _shiparea; }
        set { _shiparea = value; }
    }


    public string shipaddress
    {
        get
        {
            return _shipaddress;
        }
        set
        {
            _shipaddress = value;
        }
    }

    public string members
    {
        get
        {
            return _members;
        }
        set
        {
            _members = value;
        }
    }

    //public global::orderdetails orderdetails
    //{
    //    get
    //    {
    //        return _orddetails;
    //    }
    //    set
    //    {
    //        orderdetails = value;
    //    }
    //}
    protected override bool loadproperties2list(string typeofoperation)
    {
        SortedList sl = new SortedList();
        sl.Add("@check", typeofoperation);
        sl.Add("@orderno", orderno);
      //  sl.Add("@orderdate", orderdate);
        sl.Add("@shipname", shipname);
        sl.Add("@shipcity", shipcity);
        sl.Add("@area", shiparea);
        sl.Add("@shipaddress", shipaddress);
        sl.Add("@members", members);
        procedurename = "manageorders";
        if (db1.runprocedure(procedurename, sl) == 1)
            return true;
        else
            return false; 
    }

    public int getnextorderno()
    {
        string query = "select max(orderno)+1 from order";
        try
        {
            return Convert.ToInt16(db1.runqury(query).Rows[0][0].ToString());
        }
        catch
        {
            return 1;
        }
    }

}
