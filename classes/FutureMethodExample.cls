/**
 * Created by Eduard Panin on 18-May-18.
 */
public with sharing class FutureMethodExample {
	@future(callout = true)
	public static void runSomeLogicAsync() {
		System.debug('Future method has done');
	}

	public static void runFutureMethod() {
		System.debug('Future method called');
		runSomeLogicAsync();
	}
}