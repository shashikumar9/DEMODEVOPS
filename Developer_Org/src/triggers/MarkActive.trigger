trigger MarkActive on Account (before insert) {
//Before insert work when user save the record

for(Account a: Trigger.new)

{
a.Active__c='Yes';
}

}