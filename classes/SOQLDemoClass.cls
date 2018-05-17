public with sharing class SOQLDemoClass {
	//	Simple method to run SOQL with Offset, limit and cause
	public static void runSimpleQuery() {
		System.debug([SELECT Id, Name FROM Car__c WHERE Id != null AND Name != null LIMIT 20 OFFSET 0]);
	}
	//	Simple method to run SOQL with left join
	public static void runLeftOuterJoin() {
		for (Owner__c owner : [SELECT (SELECT Name FROM Cars__r), Name FROM Owner__c]) {
			System.debug('Car - ' + owner.Cars__r + ': Owner - ' + owner.Name);
		}
	}

	public static void runLeftInnerJoin() {
		System.debug([SELECT Name FROM Owner__c WHERE Id IN (SELECT Owner__c FROM Car__c WHERE Name = 'BMW')]);
	}

	//	Simple method to run SOQL with right join
	public static void runRightOuterJoin() {
		for (Car__c car : [SELECT Name, Owner__r.Name FROM Car__c]){
			System.debug('Owner - ' + car.Owner__r.Name + ': Car - ' + car.Name);
		}
	}

	public static void runRightInnerJoin() {
		System.debug([SELECT Name FROM Car__c WHERE Owner__r.Name = 'Eduard']);
	}

	public static void insertNewCar(String carName) {
		Car__c newCar = new Car__c(Name=carName);
		insert new List<Car__c>{newCar};
	}

}