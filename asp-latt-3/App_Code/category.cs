using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
using System.Data;
public class category:maintable
{
    private string _catno;
    private string _catname;
    private string _description;
    product _Pro;

    public string catname
    {
        get
        {
            return _catname;
        }
        set
        {
            _catname = value;
        }
    }

    public string catno
    {
        get
        {
            return _catno;
        }
        set
        {
            _catno = value;
        }
    }

    public string description
    {
        get
        {
            return _description;
        }
        set
        {
            _description = value;
        }
    }

    public global::product product
    {
        get
        {
            return _Pro ;
        }
        set
        {
            _Pro = value;
        }
    }
    protected override bool loadproperties2list(string typeofoperation)
    {
        SortedList sl = new SortedList();
        sl.Add("@check", typeofoperation);
        sl.Add("@catno", catno);
        sl.Add("@catname", catname);
        sl.Add("@description", description);
        procedurename = "managecategory";
        if (db1.runprocedure(procedurename, sl) == 1)
            return true;
        else
            return false;
    }

    public DataTable search(string field, string value)
    {
        string query = string.Format("select * from category where {0} like '%{1}%'", field, value);
        return search(query);
    }
    public DataTable search(string query)
    {
        try
        {
            return db1.runqury(query);
        }
        catch
        {
            return new DataTable();
        }
    }

    public bool removecat(string catno)
    {
        this.catno = catno;
        return delete();
    }

    public string getnextcatno()
    {
        string query = "select max(catno)+1 from category";
        return search(query).Rows[0][0].ToString();
    }
}
