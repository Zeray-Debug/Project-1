@isTest
public class TestOppTaskCreation {
    
    @TestSetup
    static void SetupTests(){
        //Create Testing data 
        List<Opportunity> oppsToInsert = new List<Opportunity>();
        for (integer num = 0; num < 151; num++) {
            oppsToInsert.add(new Opportunity (Name = 'Test Opp ' + num));
        }

        insert oppsToInsert;
    }

    //Next, make sure to test for 5 conditions: Test Positive, Test Negative, Test Single, Test Bulk, Test Restricted User

    @isTest 
    public static void TP_IsValid(){    
        Test.startTest();

        //Test the method robustly, and use multiple System.assert statements
        Opportunity testOpp = TestHelper.CreateOpportunities(1)[0];
        Boolean result = OpportunityTaskHandler.AddOppTask(testOpp);

        System.assertEquals(true, result);

        testOpp.name = 'Opp 6';
        result = OpportunityTaskHandler.AddOppTask(testOpp);

        System.assertEquals(true, result);

        testOpp.Name = 'Opp 3';
        result = OpportunityTaskHandler.AddOppTask(testOpp);

    }
}
