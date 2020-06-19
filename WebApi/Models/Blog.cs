using System.Collections.Generic;

namespace WebApi.Models
{
    public class Blog
    {        
        public int BlogId { get; set; }
        public string Url { get; set; }        

        public ICollection<Post> Post { get; set; }
    }
}
