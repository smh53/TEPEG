using Core.Entities;

using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete
{
   public class Grade : BaseEntity, IEntities
    {
        public int Id { get; set; }
      
        public int StudentId { get; set; }

        public string CourseName { get; set; }
        public string Mark { get; set; }

      
       



    }
}
