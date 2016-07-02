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
    }
}