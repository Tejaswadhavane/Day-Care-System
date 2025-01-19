using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace daycare_googleform
{
    public class DayCarefrm
    {
        public int ID { get; set; }
        public string ChildName { get; set; }
        public string DOB { get; set; }
        public string SpecialNeeds { get; set; }
        public string CarePrograms { get; set; }

        public string Activities { get; set; }
        public string Features { get; set; }

        public string DropOffTime { get; set; }
        public string PickUpTime { get; set; }
        public string CaregiverPreference { get; set; }
        public string CenterPreference { get; set; }

    }
}