using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BabyShop.Models
{
    public class Catalog
    {
        public int Id { set; get; }
        public string Name { set; get; }
        public virtual ICollection<Product> Product { set; get; }
    }
}