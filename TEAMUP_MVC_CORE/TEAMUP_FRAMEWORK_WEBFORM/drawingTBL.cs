//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TEAMUP_FRAMEWORK_WEBFORM
{
    using System;
    using System.Collections.Generic;
    
    public partial class drawingTBL
    {
        public string memberID { get; set; }
        public string drawingID { get; set; }
        public string drawingPath { get; set; }
    
        public virtual memberTBL memberTBL { get; set; }
    }
}
