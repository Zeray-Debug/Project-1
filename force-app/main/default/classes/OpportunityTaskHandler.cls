public class OpportunityTaskHandler {
    public static void AddOppTask (List<Opportunity> createdOpportunities) {

        List<Task> taskListToInsert = new List<Task>();

        for (Opportunity opp : createdOpportunities) {
            if (opp.StageName == 'Closed Won') {
                Task t = new Task();
                t.Subject = 'Follow up Task'
                t.WhatId = opp.Id;
                taskListToInsert.add(t);
            }
        }

        if (taskListToInsert.size() > 0) {
            insert taskListToInsert;
        }
        
    }
}
