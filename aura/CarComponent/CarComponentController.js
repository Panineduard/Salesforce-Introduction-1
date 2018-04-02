({
    saveCar: function (component, event, helper) {
        var action = component.get("c.setCar");

        action.setParams({
            "car": component.get("v.car")
        });

        action.setCallback(this, function (response) {
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {

            }
        });

        $A.enqueueAction(action);
    }
})