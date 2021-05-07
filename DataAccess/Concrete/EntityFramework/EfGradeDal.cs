using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using DataAccess.Concrete.Context;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Concrete.EntityFramework
{
  public class EfGradeDal : EfEntityRepositoryBase<Grade, TepegContext>, IGradeDal
    {

    }
}
