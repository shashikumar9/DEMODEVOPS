trigger UpdatePhone on Contact (before insert) {

//this will fire when before insert record
for(Contact c: Trigger.new)
{
c.Phone='9381810483';

}

}