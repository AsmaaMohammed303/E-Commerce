using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections;
public abstract class maintable
{
    protected string procedurename;
    protected db db1 = new db();

    protected virtual bool loadproperties2list(string typeofoperation)
    {
       return false;
    }
    public bool Add()
    {
        return loadproperties2list("a");
    }

    public bool update()
    {
        return loadproperties2list("u");
    }

    public bool delete()
    {
        return loadproperties2list("d");
    }
}
