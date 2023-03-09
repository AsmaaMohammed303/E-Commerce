using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
public class orderdetails:maintable
{
    private string _catno;
    private string _productid;
    private int _orderno;
    private int _quantity;
    private double _sellprice;
    private double _discount;
    private product _pro;

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

    public int quantity
    {
        get
        {
            return _quantity;
        }
        set
        {
            _quantity = value;
        }
    }

    public double sellprice
    {
        get
        {
            return _sellprice;
        }
        set
        {
            _sellprice = value;
        }
    }

    public double discount
    {
        get
        {
            return _discount;
        }
        set
        {
            _discount = value;
        }
    }

    public global::product product
    {
        get
        {
            return _pro;
        }
        set
        {
            _pro = value;
        }
    }
    protected override bool loadproperties2list(string typeofoperation)
    {
        SortedList sl = new SortedList();
        sl.Add("@check", typeofoperation);
        sl.Add("@catno", catno);
        sl.Add("@productid", productid);
        sl.Add("@orderno", orderno);
        sl.Add("@quantity", quantity);
        sl.Add("@sellprice", sellprice);
        sl.Add("@discount", discount);
        procedurename = "manageorderdetails";
        if (db1.runprocedure(procedurename, sl) == 1)
            return true;
        else
            return false; 
    }
}
