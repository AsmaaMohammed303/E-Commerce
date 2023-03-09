using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
using System.Data;
public class members : maintable
{
    //stop have an  error 
    #region fields
    private string _username;
    private string _pass;
    private string _name;
    private string _email;
    private int _phone;
    private char _gender;
    private DateTime _birthdate;
    private string _question;
    private string _answer;
    private order _ord;
    #endregion


    #region properties
    public string username
    {
        get
        {
            return _username;
        }
        set
        {
            _username = value;
        }
    }

    public string password
    {
        get
        {
            return _pass;
        }
        set
        {
            _pass = value;
        }
    }

    public string name
    {
        get
        {
            return _name;
        }
        set
        {
            _name = value;
        }
    }

    public string email
    {
        get
        {
            return _email;
        }
        set
        {
            _email = value;
        }
    }

    public int phone
    {
        get
        {
            return _phone;
        }
        set
        {
            _phone = value;
        }
    }

    public char gender
    {
        get
        {
            return _gender;
        }
        set
        {
            _gender = value;
        }
    }

    public DateTime birthdate
    {
        get
        {
            return _birthdate;
        }
        set
        {
            _birthdate = value;
        }
    }

    public string question
    {
        get
        {
            return _question;
        }
        set
        {
            _question = value;
        }
    }

    public string answer
    {
        get
        {
            return _answer;
        }
        set
        {
            _answer = value;
        }
    }
    #endregion

    public global::order orders
    {
        get
        {
            return _ord;
        }
        set
        {
            _ord = value;
        }
    }

    //________________Register______________________
    public string Register()
    {
        if (Add())
            return "user added successfully";
        else
            return "user not added ,please change username and try again";
    }

    public string Register(string username, string pass, string name, string email, int phone, char gender, DateTime birthdate, string question, string answer)
    {
        this.username = username;
        this.password = pass;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
      //  this.birthdate = birthdate;
        this.question = question;
        this.answer = answer;
        return Register();
    }
    //_________________login__________________________
    public Boolean login()
    {
        return login(username, password);
    }

    public bool login(string user, string pass)
    {
        string query = string.Format("select * from members where username='{0}' and password='{1}'", user, pass);
        if (db1.runqury(query).Rows.Count == 1)
            return true;
        else
            return false;
    }
    //___________________changepassword______________________
    public bool changepassword(string username, string newpass)
    {
        return false;
    }
    //____________________unsubscribe_________________________
    public bool unsubscribe(string username)
    {
        this.username = username;
        return delete();
    }
    //________________________Edit_____________________________
    public string EditProfile()
    {
        throw new System.NotImplementedException();
    }

    public string EditProfile(string username, string pass, string name, string email, int phone, char gender, DateTime birthdate, string question, string answer)
    {
        throw new System.NotImplementedException();
    }

    public bool caseavailability(string username)
    {
        throw new System.NotImplementedException();
    }

    protected override bool loadproperties2list(string typeofoperation)
    {
        SortedList sl = new SortedList();
        sl.Add("@check", typeofoperation);
        sl.Add("@username", username);
        sl.Add("@password", password);
        sl.Add("@name", name);
        sl.Add("@email", email);
        sl.Add("@phone", phone);
        sl.Add("@gender", gender);
       // sl.Add("@birthdate", birthdate);
        //error number 8114 in convert date
        sl.Add("@questuion", question);
        sl.Add("@answer", answer);
        procedurename = "managemembers";
        if (db1.runprocedure(procedurename, sl) == 1)
            return true;      
        else
         return false; 
    }
    public DataTable search(string field, string value)
    {
        string query = string.Format("select username,password,name,email,phone,gender from members where {0} like '%{1}%'", field, value);
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

    public double genderprecentage(string maleorfemale)
    {
        string querymf = "select count(*) from members where gender='"+maleorfemale+"' ";
        string queryall= "select count(*) from members";
        double mf =Convert.ToDouble(db1.runqury(querymf).Rows[0][0].ToString());
        double all = Convert.ToDouble(db1.runqury(queryall).Rows[0][0].ToString());
        double per =mf/all;
        return per;
    }

    public string getemail(string uname)
    {
        try
        {
            return db1.runqury("select email from members where username= '" + uname + "' ").Rows[0][0].ToString();
        }
        catch
        {
            return "";
        }
    }

}