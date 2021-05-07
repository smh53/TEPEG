using Business.Abstract;
using Business.Constants.Messages;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class GradeManager : IGradeService
    {
        private readonly IGradeDal _gradeDal;


        public GradeManager(IGradeDal gradeDal)
        {
            _gradeDal = gradeDal;
        }
        public IResult Add(Grade grade)
        {
            _gradeDal.Add(grade);
            return new SuccessResult();
        }

        public IResult Delete(int gradeId)
        {
            var result = _gradeDal.Get(f => f.Id == gradeId);
            if (result != null)
            {
                _gradeDal.Delete(result);
                return new SuccessResult(Messages.GradeDeleted);
            }
            return new ErrorResult(Messages.DoesntExist);
        }

        public IDataResult<List<Grade>> GetAll()
        {
            var result = _gradeDal.GetAll();
            return new SuccessDataResult<List<Grade>>(result);
        }

        public IDataResult<Grade> GetById(int gradeId)
        {
            var result = _gradeDal.Get(f => f.Id == gradeId);
            if (result != null)
            {
                return new SuccessDataResult<Grade>(result);
            }
            return new ErrorDataResult<Grade>(Messages.DoesntExist);
        }

        public IResult Update(Grade grade)
        {
            var result = _gradeDal.Get(f => f.Id == grade.Id);

            if (result != null)
            {
                result.Mark = grade.Mark;
                result.CourseName = grade.CourseName;                            
                result.StudentId = grade.StudentId;
                
                _gradeDal.Update(result);
                return new SuccessResult("Güncellendi");
            }
            return new ErrorResult(Messages.DoesntExist);
        }
    }
}
