namespace BabyShop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class sizePro : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Sizes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameSize = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Sizes");
        }
    }
}
