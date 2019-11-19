namespace BabyShop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class color : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                    "dbo.Colors",
                    c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        ColorName = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.Id);
        }
        
        public override void Down()
        {
        }
    }
}
