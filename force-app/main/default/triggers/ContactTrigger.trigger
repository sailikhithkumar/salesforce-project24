trigger ContactTrigger on Contact (before insert) {
    ContactHandler.RestrictContactCreation(trigger.new);

}