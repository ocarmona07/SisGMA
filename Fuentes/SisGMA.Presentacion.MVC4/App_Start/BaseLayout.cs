using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Xml;

namespace SisGMA.Presentacion.MVC4
{
    public class BaseLayout
    {
        private readonly string _xmlMessageFile = HttpContext.Current.Server.MapPath(@"~\App_Data\Messages.xml");

        public Dictionary<string, string> GetMessage(string section, string subSection, string tag)
        {
            var response = new Dictionary<string, string>();
            try
            {
                if (File.Exists(_xmlMessageFile))
                {
                    var xmlMessages = new XmlDocument();
                    xmlMessages.Load(_xmlMessageFile);
                    var messageNode = xmlMessages.SelectSingleNode(string.Format("/Messages/{0}/{1}/{2}",
                        section, subSection, tag));
                    if (messageNode != null && messageNode.Attributes != null)
                    {
                        response.Add("Title", messageNode.Attributes["Title"].Value);
                        response.Add("Message", messageNode.InnerText);
                    }
                }
            }
            catch
            {
                response = null;
            }

            return response;
        }

        public string[] GetStyles()
        {
            var defaultStylesFolder = "~/Styles/";
            var styles = new[]
            {
                defaultStylesFolder + "bootstrap.min.css",
                defaultStylesFolder + "font-awesome.min.css",
                defaultStylesFolder + "AdminLTE.min.css",
                defaultStylesFolder + "skins/_all-skins.min.css"
            };
            return styles;
        }

        public string[] GetScripts()
        {
            var defaultScriptsFolder = "~/Scripts/";
            var defaultPluginsFolder = "~/Plugins/";
            var styles = new[]
            {
                defaultPluginsFolder + "jQuery/jQuery-2.2.0.min.js",
                defaultScriptsFolder + "bootstrap.min.js",
                defaultScriptsFolder + "app.min.js",
                defaultPluginsFolder + "fastclick/fastclick.js",
                defaultPluginsFolder + "slimScroll/jquery.slimscroll.min.js"
            };
            return styles;
        }
    }
}