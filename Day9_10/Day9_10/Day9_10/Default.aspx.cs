using System;
using System.IO;
using System.Text;
using System.Web;
using System.Web.Caching;

namespace Day9_10
{
    public partial class Default : System.Web.UI.Page
    {
        HttpBrowserCapabilities bro1;
        CacheDependency cache1;
        protected void Page_Load(object sender, EventArgs e)
        {  
                
        }
        protected void StoreBrowserClick(object sender, EventArgs e)
        {
            try
            {
                bro1 = Request.Browser;
                Cache["name"] = bro1.Browser;
                Cache["version"] = bro1.Version;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void ExpireCacheClick(object sender, EventArgs e)
        {
            try
            {
                bro1 = Request.Browser;
                Cache.Insert("name", bro1.Browser,
                            null, DateTime.Now.AddSeconds(15),
                            System.Web.Caching.Cache.NoSlidingExpiration);
                Cache.Insert("version", bro1.Version,
                            null, DateTime.Now.AddSeconds(15),
                            System.Web.Caching.Cache.NoSlidingExpiration);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void AddDate(object sender, EventArgs e)
        {
            Cache["currentdate"] = DateTime.Now.Date.ToString("d");
        }

        //Function for clear cache on file modification
        protected void FileModify(object sender, EventArgs e)
        {
            try
            {
                cache1 = new CacheDependency(Server.MapPath("Sample.txt"));
                Cache.Insert("name", cache1);
                Cache.Insert("version", cache1);
                Cache.Insert("currentdate", cache1);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}