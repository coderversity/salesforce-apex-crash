private void run() {
    // fundamentals
    printToDebugLog();
    variablesAndPrimitiveDataTypes();
    mathOperators();
    comparisonOperators();
    logicalOperators();
    conditionalStatements();
    arrays();
    collections();
    loops();
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
    Integer a = 10;
    Integer b = 5;

    Boolean isEqual = (a == b);    // Equal to: false
    debug('Numbers equal?', isEqual);

    Boolean isNotEqual = (a != b); // Not equal to: true
    debug('Numbers not equal?', isNotEqual);

    Boolean isGreater = (a > b);   // Greater than: true
    debug('Is A greater than B?', isGreater);

    Boolean isLess = (a < b);      // Less than: false
    debug('Is A less than B?', isLess);

    Boolean isGreaterOrEqual = (a >= b); // Greater than or equal to: true
    debug('Is A greater than or equal to B?', isGreaterOrEqual);

    Boolean isLessOrEqual = (a <= b);    // Less than or equal to: false
    debug('Is A less than or equal to B? ', isLessOrEqual);
}

private void logicalOperators() {
    Boolean x = true;
    Boolean y = false;

    Boolean andResult = x && y; // Logical AND: false
    debug('X and Y', andResult);

    Boolean orResult = x || y;  // Logical OR: true
    debug('X or Y', orResult);

    Boolean notResult = !x;     // Logical NOT (inverts boolean values): false
    debug('Inverse of x', notResult);
}

private void conditionalStatements() {
    /* IF-ELSE STATEMENTS */
    Integer age = 25;

    if (age < 18) {
        System.debug('You are a minor.');
    } else if (age >= 18 && age <= 65) {
        System.debug('You are an adult.');
    } else {
        System.debug('You are a senior citizen.');
    }

    /* SWITCH STATEMENTS */
    Integer dayOfWeek = 3;
    String dayName;

    switch on dayOfWeek {
        when 1 {
            dayName = 'Monday';
        }
        when 2 {
            dayName = 'Tuesday';
        }
        when 3 {
            dayName = 'Wednesday';
        }
        when 4 {
            dayName = 'Thursday';
        }
        when 5 {
            dayName = 'Friday';
        }
        when else {
            System.debug('Weekend');
        }
    }

    debug('Day of week', dayName);
}

private void arrays() {
    // Arrays are fixed-size data structures that store multiple values of the same data type
    Integer[] numbers = new Integer[3];
    numbers[0] = 1;
    numbers[1] = 2;
    numbers[2] = 3;
    debug('Numbers array', numbers);

    // shorthand declaration and initialization
    String[] animals = new String[] {
        'zebra', 'giraffe', 'gorilla'
    };

    debug('Animals array', animals);

    // access a single index
    debug('First number', numbers[0]);

    // check the size of an array and access the last item in the array
    debug('Size of animals array', animals.size());
    debug('Last animal', animals[animals.size() - 1]);
}

private void collections() {
    // Lists are ordered collections that can store duplicates and multiple values of the same ata type
    List<String> cities = new List<String>();
    
    // add items
    cities.add('New York');
    cities.add('Berlin');
    cities.add('London');

    // get aingle item from list
    debug('Second city', cities[1]);

    // Sets are unordered and store multiple values of the same data type. They do not contain duplicate entries
    Set<String> names = new Set<String>();
    names.add('John');
    names.add('Katie');
    names.add('Jackson');

    debug('Number of names in set', names.size());

    // If we try to insert a duplicate, it will not be aded to the set
    names.add('Katie');
    debug('Number of items after dupe insert', names.size());

    // To access a specific item in a set, we first need to cast the set into a list so that we can
    // access the index
    List<String> namesAsList = new List<String>(names);
    debug('First item in set', namesAsList[0]);
    
    // Maps store key-value pairs allowing us to associate values with unique keys
    Map<String, Integer> inventory = new Map<String, Integer>();
    inventory.put('T-shirt', 10);
    inventory.put('Jeans', 3);
    inventory.put('Belt', 50);

    // get a single item from map by its key
    debug('Belt count', inventory.get('Belt'));

    // We can get all map keys as a set of strings
    Set<String> mapKeys = inventory.keySet();
    debug('Map keys', mapKeys);

    // We van get all map values as a list / array of values
    List<Integer> mapValues = inventory.values();
    debug('Map values', mapValues);
}

private void loops() {

}

private void methods() {
    // for-loop continues iterating until the condition is met
    for (Integer i = 0; i < 5; i++) {
        debug('For loop count', i);
    }

    // While-loop is used when you don't want to specify a condition beforehand. The loop will continue to iterate
    // unless a condition (which is specified within the loop block) is met.
    Integer count = 0;

    while (count < 3) {
        debug('While loop count', count);
        count++; // we need this so that we won't loop infinitely
    }

    // Do-while-loops (unlike while-loops) are guaranteed to run at least once. Use this loop if you don't want to specify
    // the condition beforehand, but want the loop to execute the code block AT LEAST ONCE.
    Integer num = 1;

    do {
        debug('Do-while loop count', num);
        num++;
    } while (num <= 3);

    // FOR-EACH LOOPS
    // For-each loops are generally used with collection types, and they continue to iterate until the loop reaches the end of
    // the collection.
    
    // Looping through array
    Double[] temperatures = new Double[] {
        24.5, 55.0, 85.7, 104.3
    };

    for (Double temperature : temperatures) {
        debug('Temperature', temperature);
    }

    // We can also loop through other collections with any loop
    
    // Looping through list
    List<String> groceries = new List<String> { 'apples', 'grapes', 'meat', 'water' };
    
    for (Integer i = 0; i < groceries.size(); i++) {
        debug('Grocery item', groceries[i]);
    }

    // Same thing using a foreach loop
    for (String item : groceries) {
        debug('Foreach item', item);
    }

    // Looping through set
    Set<String> cards = new Set<String> {
        'A', 'J', 'K', 'Q', 'Joker'
    };

    for (String card : cards) {
        debug('Your card', card);
    }

    // Looping through map keys
    Map<String, String> locations = new Map<String, String> {
        'Tokyo' => 'Japan', 'Kyoto' => 'Japan', 'Paris' => 'France'
    };

    for (String city : locations.keySet()) {
        debug('Map key (city)', city);
        debug('Map value (country)', locations.get(city));
    }

    // Looping through map values
    for (String country : locations.values()) {
        debug('Country', country);
    }
}

private void classes() {
    Person person = new Person('Reggie', 45);
    person.greet();
    debug('New age', person.incrementAge());
}

private void exceptionHandling() {
    // Dividing by zero will throw a MathException so we need to handle it
    try {
        Integer num1 = 10;
        Integer num2 = 0;
        Integer result = num1 / num2;
    } catch (MathException mex) {
        debug('Math error', mex.getMessage());
    } catch (Exception ex) {
        // this runs if we encounter a different exception
        debug('Oops, an error occurred', ex.getMessage());
    }
}