namespace BabyShop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class sizeProduct : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ProductSizes",
                c => new
                    {
                        ProductId = c.Int(nullable: false),
                        SizeId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.ProductId, t.SizeId })
                .ForeignKey("dbo.Products", t => t.ProductId, cascadeDelete: true)
                .ForeignKey("dbo.Sizes", t => t.SizeId, cascadeDelete: true)
                .Index(t => t.ProductId)
                .Index(t => t.SizeId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.ProductSizes", "SizeId", "dbo.Sizes");
            DropForeignKey("dbo.ProductSizes", "ProductId", "dbo.Products");
            DropIndex("dbo.ProductSizes", new[] { "SizeId" });
            DropIndex("dbo.ProductSizes", new[] { "ProductId" });
            DropTable("dbo.ProductSizes");
        }
    }
}
