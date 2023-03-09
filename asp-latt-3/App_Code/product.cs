using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
using System.Data;
public class product:maintable
{
    private string _catno;
    private string _productid;
    private string _productname;
    private double _price;
    private int _availablequality;
    private DateTime _writtingdate;
    private string _description;

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

    public string productid
    {
        get
        {
            return _productid;
        }
        set
        {
            _productid = value;
        }
    }

    public string productname
    {
        get
        {
            return _productname;
        }
        set
        {
            _productname = value;
        }
    }

    public double price
    {
        get
        {
            return _price;
        }
        set
        {
            _price = value;
        }
    }

    public int availablequality
    {
        get
        {
            return _availablequality;
        }
        set
        {
            _availablequality = value;
        }
    }

    public DateTime writtingdate
    {
        get
        {
            return _writtingdate;
        }
        set
        {
            _writtingdate = value;
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
    protected override bool loadproperties2list(string typeofoperation)
    {
        SortedList sl = new SortedList();
        sl.Add("@check", typeofoperation);
        sl.Add("@catno", catno);
        sl.Add("@productid", productid);
        sl.Add("@productname", productname);
        sl.Add("@price", price);
        sl.Add("@availablequality", availablequality);
        //sl.Add("@writtingdate", writtingdate);
        sl.Add("@description", description);
        procedurename = "StoredProcedure3";
        if (db1.runprocedure(procedurename, sl) == 1)
            return true;
        else
            return false;
    }

    public DataTable search(string field, string value)
    {
        string query = string.Format("select * from product where {0} like '%{1}%'", field, value);
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

    public bool removeproduct(string cat,string pro)
    {
        //this.productid = productid;
        this.catno = cat;
        this.productid = pro;
        return delete();
    }

    public string getnextproid()
    {
        string query = "select max(catno)+1 from product";
        return search(query).Rows[0][0].ToString();
    }

    public bool find(string catnum, string proid)
    {
        string q = string.Format("select * from product where catno='{0}' and productid='{1}' ",catnum,proid);
        DataTable tbl= search(q);
        if (tbl.Rows.Count == 0)
            return false;
        else
        {
            this.catno = tbl.Rows[0][0].ToString();
            this.productid = tbl.Rows[0][1].ToString();
            this.productname = tbl.Rows[0][2].ToString();
            this.price = Convert.ToDouble( tbl.Rows[0][3].ToString());
            this.availablequality = Convert.ToInt16(tbl.Rows[0][4].ToString());
            //this.writtingdate = tbl.Rows[5].ToString();
            this.description = tbl.Rows[0][6].ToString();
            return true;
        }
    }
    public int countproducts()
    {
      DataTable tbl=db1.runqury("select count(*) from product");
      return Convert.ToInt16(tbl.Rows[0][0].ToString());
    }

    public double maxpriceproduct()
    {
        DataTable tbl = db1.runqury("select max(price) from product");
        return Convert.ToDouble(tbl.Rows[0][0].ToString());
    }

    public string maxpriceproductname()
    {
        DataTable tbl = db1.runqury("select productname from product where price="+maxpriceproduct());
        return tbl.Rows[0][0].ToString();
    }
}
