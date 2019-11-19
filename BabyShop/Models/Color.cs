using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BabyShop.Models
{
    public class Color
    {
        public int Id { get; set; }
        public string ColorName { get; set; }

        public virtual ICollection<ProductColor> ProductColors { get; set; }
    }
}