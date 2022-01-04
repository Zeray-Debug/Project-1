trigger CreateTaskOnOpp on Opportunity (before insert, before update, before delete, after update, after delete, after insert, after undelete) {

    switch on trigger.operationType {
        when BEFORE_INSERT {
            

        }

        when BEFORE_UPDATE {

        }

        when BEFORE_DELETE {

        }

        when AFTER_INSERT {
            OpportunityHandler.AddOppTask(trigger.new);

        }

        when AFTER_DELETE {

        }

        when AFTER_UPDATE{

        }

        when AFTER_UNDELETE {

        }
    }
}

    