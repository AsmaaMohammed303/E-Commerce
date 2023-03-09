using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

/// <summary>
/// Summary description for card
/// </summary>
public class card : maintable
{
    private string _cardtype;
    private string _cardnum;
    private string _month;
    private string _year;
    private string _namecard;
    private string _username;


    public string cardtype
    {
        get { return _cardtype; }
        set { _cardtype = value; }
    }

    public string Cardnum
    {
        get { return _cardnum; }
        set { _cardnum = value; }
    }

    public string month
    {
        get { return _month; }
        set { _month = value; }
    }

    public string year
    {
        get { return _year; }
        set { _year = value; }
    }

    public string namecard
    {
        get { return _namecard; }
        set { _namecard = value; }
    }

    public string username
    {
        get { return _username; }
        set { _username = value; }
    }
	public card()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    protected override bool loadproperties2list(string typeofoperation)
    {
        SortedList sl = new SortedList();
        sl.Add("@check", typeofoperation);
        sl.Add("@cardtype", cardtype);
        sl.Add("@Cardnum", Cardnum);
        sl.Add("@month", month);
        sl.Add("@year", year);
        sl.Add("@namecard", namecard);
        sl.Add("@username", username);
        procedurename = "managecard";
        if (db1.runprocedure(procedurename, sl) == 1)
            return true;
        else
            return false;
    }
}