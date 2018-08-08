trigger HelloWorldTrigger on Account (before insert) {
System.debug('First Line');
    for(Account a : Trigger.New)
    {
        a.Description = 'New Descriptionn';
}
}