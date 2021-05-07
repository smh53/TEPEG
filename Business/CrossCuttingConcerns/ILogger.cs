using System;
using System.Collections.Generic;
using System.Text;

namespace Business.CrossCuttingConcerns
{
  public interface ILogger
    {
        //Birden fazla loglama yöntemi olabilir onun için interface yaptık
        void Log();
    }
}
