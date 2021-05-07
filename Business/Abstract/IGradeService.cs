using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
  public interface IGradeService
    {
        IDataResult<List<Grade>> GetAll();
        IDataResult<Grade> GetById(int gradeId);

        IResult Add(Grade grade);

        IResult Update(Grade grade);

        IResult Delete(int gradeId);
    }
}
