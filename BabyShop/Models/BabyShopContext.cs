using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace BabyShop.Models
{
    public class BabyShopContext : DbContext
    {
        // You can add custom code to this file. Changes will not be overwritten.
        // 
        // If you want Entity Framework to drop and regenerate your database
        // automatically whenever you change your model schema, please use data migrations.
        // For more information refer to the documentation:
        // http://msdn.microsoft.com/en-us/data/jj591621.aspx
    
        public BabyShopContext() : base("name=BabyShopContext")
        {
        }

        public System.Data.Entity.DbSet<BabyShop.Models.Product> Products { get; set; }

        public System.Data.Entity.DbSet<BabyShop.Models.Catalog> Catalogs { get; set; }

        public System.Data.Entity.DbSet<BabyShop.Models.Thumbnail> Thumbnails { get; set; }

        public System.Data.Entity.DbSet<BabyShop.Models.Size> Sizes { get; set; }

        public System.Data.Entity.DbSet<BabyShop.Models.ProductSize> ProductSizes { get; set; }

        public System.Data.Entity.DbSet<BabyShop.Models.Color> Colors { get; set; }

        public System.Data.Entity.DbSet<BabyShop.Models.ProductColor> ProductColors { get; set; }
    }
}
