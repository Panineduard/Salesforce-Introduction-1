public with sharing class CarLightningController {
    @AuraEnabled
    public static List<CarModel> getCarModels() {
        List<CarModel> result = new List<CarModel>();
        for (Car__c car : [SELECT Name FROM Car__c]) {
            result.add(new CarModel(car.Name));
        }

        return result;
    }

    @AuraEnabled
    public static void setCar(CarModel car) {

    }
}