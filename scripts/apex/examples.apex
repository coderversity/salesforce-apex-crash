private void run() {
    // fundamentals
    printToDebugLog();
    variablesAndPrimitiveDataTypes();
    mathOperators();
    comparisonOperators();
    logicalOperators();
    conditionalStatements();
    loops();
    arrays();
    collections();
    methods();
    classes();
    exceptionHandling();
}

run();

/** HELPERS */
private void printToDebugLog() {
    System.debug('Hello world!');
}

private void debug(String tag, Object valueObj) {
    System.debug('---' + tag + ': ' + valueObj);
}

private void variablesAndPrimitiveDataTypes() {
    // defining variables
    // Integers are whole numbers
    Integer yearBuilt = 1999;

    // Longs are extremely large numbers (usually over 2.14 billion)
    Long population = 2147483648L;

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

    // booleans (true or false)
    Boolean isStudent = true;
    debug('Are you a student?', isStudent);

    // blob is a collection of binary data stored as a single object (used frequently for attachment data)
    Blob binaryData = EncodingUtil.base64Decode('base64FileData');
    debug('Binary data', binaryData);

    // variables can also be declared but not initialized until later
    Integer quantity;
    quantity = 3;
    debug('Quantity', quantity);

    // Date and DateTime
    Date myDate = Date.newInstance(2023, 10, 14); // create new date object
    DateTime myDateTime = DateTime.newInstance(2023, 10, 14, 15, 30, 0); // Creates a DateTime instance for October 14, 2023, 3:30 PM.

    // Format date using current user's locale (e.g. mm/dd/yyyy)
    String formattedDate = myDate.format();
    debug('Formatted date: ', formattedDate);

    // Format date and time with current user's locale
    String formattedDateTime = myDateTime.format('yyyy-MM-dd HH:mm:ss');
    debug('Formatted date and time', formattedDateTime);

    // Time
    Time currentTime = System.now().time(); // get the current time in the user's locale
    debug('Current time', currentTime);

    // Object can be any data type (if we don't know what data type to expect, you can use Object to store values)
    Object obj = 'Tommy';
    String objValue = String.valueOf(obj);
    debug('Object Value', objValue);
}

private void mathOperators() {
    Integer a = 10;
    Integer b = 5;

    // add
    Integer sum = a + b;
    debug('Sum', sum);

    // subtract
    Integer diff = a - b;
    debug('Difference', diff);

    // numbers can also be negative
    debug('Negative diff', b - a);

    // multiply
    Integer product = a * b;
    debug('Product', product);

    // divide
    Integer quotient = a / b;
    debug('Quotient', quotient);

    // modulus (remainder)
    Integer c = 24;
    Integer remainder = Math.mod(c, a);
    debug('Remainder', remainder);
}

private void comparisonOperators() {

}

private void logicalOperators() {

}

private void conditionalStatements() {

}

private void loops() {

}

private void arrays() {

}

private void collections() {

}

private void methods() {

}

private void classes() {
    
}
private void exceptionHandling() {

}