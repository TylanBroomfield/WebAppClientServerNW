using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace DBSystem.ENTITIES
{
    [Table("Player")]
    public class Entity02
    {
        [Key]
        public int PlayerID { get; set; }
        public string FirstName { get; set; }
        public int Age { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public string MedicalAlertDetails { get; set; }
        //private string _QuantityPerUnit;
        //public string QuantityPerUnit
        //{
        //    get
        //    {
        //        return _QuantityPerUnit;
        //    }
        //    set
        //    {
        //        _QuantityPerUnit = string.IsNullOrEmpty(value) ? null : value;
        //    }
        //}
        //public decimal? UnitPrice { get; set; }
        //public Int16? UnitsInStock { get; set; }
        //public Int16? UnitsOnOrder { get; set; }
        //public Int16? ReorderLevel { get; set; }
        //public bool Discontinued { get; set; }

        [NotMapped]
        public string FirstAndLast
        {
            get
            {
                return FirstName + ", " + LastName;
            }
        }
    }
}
