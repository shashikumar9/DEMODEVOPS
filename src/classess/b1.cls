global class b1 implements Database.Batchable<sObject>
{
global final String query;
global final String s_object;
global final String field;
global final String field_value;
//demo hai hhhhh
//testing aproval process
//Pipeline testing

global b1(String q,String s,String f,String v)
{
Query=q;
s_object=s;
field=f;
field_value=v;
}
//for declare the global database
global Database.QueryLocator start(Database.BatchableContext BC)
{
return Database.getQueryLocator(query);//At the time of execution of query

}
    //
global void execute(Database.BatchableContext BC, List<sObject> batch)
{
    for(sObject o: batch)
    {
        o.put(field,field_value);
    }
    update batch;
}

    global void finish(Database.BatchableContext BC)

{


}
}
//What excute and what process we want need to specify here