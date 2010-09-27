select  t1.DATA_VAL_ALPHA as QuestionNo1, t2.DATA_VAL_ALPHA as Answer, t1.MASTER_DLG_ID as DialogID
from VOLDTASKDATA t1
inner join VOLDTASKDATA t2
on t1.MASTER_DLG_ID = t2.MASTER_DLG_ID and t1.DATA_KEY = 'QuestionNumber' and t2.DATA_KEY = 'Answer' and t1.TASK_COUNTER = t2.TASK_COUNTER
order by t1.MASTER_DLG_ID, t1.DATA_VAL_ALPHA 