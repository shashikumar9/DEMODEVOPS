trigger AccTypeUpdate on Account (before insert,before update) {
//before insert and before update is when user insert or update the record.
for(Account acc:Trigger.new)
{
if(acc.NumberOfEmployees>=500)
{
acc.Type= 'Technology Partner';
}
else{
acc.Type= 'Prospect';
acc.
}
}
}