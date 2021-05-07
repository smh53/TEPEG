using Core.Entities;

using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete
{
  public  class Student : BaseEntity, IEntities
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }

        public string StudentNumber { get; set; }

        public ICollection<Grade> Grades { get; set; }
    }
}
