using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BabyShop.Models
{
    public class Size
    {
        
        public int Id { set; get; }
        public string NameSize { set; get; }
        public virtual ICollection<ProductSize> ProductSizes { get; set; }
    }
}