using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for QuesionDAL
/// </summary>
public class QuesionDAL
{

    QuestionsDataContext dbContext = new QuestionsDataContext();
    public IEnumerable<string> getList(int id)
    {
        tbl_Questionnaire QueObj = new tbl_Questionnaire();
        QueObj.ServiceId = id;

        var query = from p in dbContext.tbl_Questionnaires
                    where p.ServiceId == QueObj.ServiceId
                    select p.Question;

        return query;
    }
}