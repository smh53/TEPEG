using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
   public interface IStudentService
    {
        IDataResult<List<Student>> GetAll();
        IDataResult<Student> GetById(int studentId);

        IResult Add(Student student);

        IResult Update(Student student);

        IResult Delete(int studentId);



    }
}
