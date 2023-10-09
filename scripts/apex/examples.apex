private static void run() {
    printToDebugLog();
    runVariablesAndDataTypes();
}

run();

/** HELPERS */
private static void printToDebugLog() {
    System.debug('Hello world!');
}

private void debug(String tag, Object valueObj) {
    System.debug('---' + tag + ': ' + valueObj);
}

private void runVariablesAndDataTypes() {
    // defining variables
    Integer age = 30;
    String name = 'John';
    debug('Age', age);
    debug('Name', name);

    // floating point numbers
    Double pi = 3.14159; // mostly used for math and scientific claculations
    Decimal balance = 245.34; // has more precision and mostly used for finance
    debug('PI', pi);
    debug('balance', balance);

    // strings (text)
    String studentName = 'Linda';
    String grade = 'A'; // use string data type for single-character text as well
    debug('Student', studentName);
    debug('Grade', grade);

    // concatenate strings
    String jobTitle = 'Salesforce Developer';
    String company = 'Microsoft';
    System.debug('Bobby is a ' + jobTitle + '. He works for ' + company + '.');

    // type casting
    Integer num = 40;
    String numAsString = String.valueOf(num);
    debug('Casted integer', numAsString);
}