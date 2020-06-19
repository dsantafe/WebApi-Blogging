using Microsoft.EntityFrameworkCore;
using WebApi.Models;

namespace WebApi.Data
{
    public class ContextNPG : DbContext
    {
        public ContextNPG(DbContextOptions<ContextNPG> options) : base(options)
        {
        }

        public DbSet<Blog> Blogs { get; set; }
        public DbSet<Post> Posts { get; set; }
        
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Blog>().ToTable("blog");            
            modelBuilder.Entity<Post>().ToTable("post");

            LowercaseRelationalTableAndPropertyNames(ref modelBuilder);
        }

        public static void LowercaseRelationalTableAndPropertyNames(ref ModelBuilder modelBuilder)
        {
            foreach (var entity in modelBuilder.Model.GetEntityTypes())
            {
                entity.Relational().TableName = entity.Relational().TableName.ToLowerInvariant();

                foreach (var property in entity.GetProperties())
                {
                    property.Relational().ColumnName = property.Relational().ColumnName.ToLowerInvariant();
                }
            }
        }
    }
}
