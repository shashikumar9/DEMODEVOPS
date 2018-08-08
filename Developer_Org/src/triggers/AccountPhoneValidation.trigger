trigger AccountPhoneValidation on Account (before insert, before update) {
//Before insert is for New record 
//Before update is for existing record

for(Account acc: Trigger.new)
{
if(acc.Phone == null)
{
acc.AddError('Please update a Phone number');
}

}


}