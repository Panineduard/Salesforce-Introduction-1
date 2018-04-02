public with sharing class CarModel {
    @AuraEnabled public String name {get; set;}
    @AuraEnabled public String brand {get; set;}
    @AuraEnabled public String model {get; set;}

    public CarModel(String name) {
        this.name = name;
    }

    public CarModel(){}
}