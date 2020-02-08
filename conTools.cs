using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace kutuphane
{
    public class conTools
    {
        public static string baglan()
        {
            return "server=localhost;database=library;trusted_connection=true;";
        }
        public class siparisGetir
        {
            public int Id { get; set; }
            public int UyeId { get; set; }
            public string UyeAd { get; set; }
            public string kitapAd { get; set; }
            public string ATarih { get; set; }
            public string VTarrih { get; set; }
            public string GTarrih { get; set; }
        }
    }
}
