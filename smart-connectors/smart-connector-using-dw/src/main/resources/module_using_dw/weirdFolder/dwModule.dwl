%dw 2.0

/******************************************************************************************************************************
 NOTICE:
    This file, `dwModule.dwl`, must be referenced in the META-INF/mule-artifact/mule-artifact.json file to properly export the
    resource so that the the functions being consumed (`five()`, `echo(String)`, `toUpper(Person)`, `toUpper(Array<Person)`) in
    the module `module-using-dw.xml` are accessible in the application using it (remember that smart connectors are macro
    expanded, thus the resources must be reached by the main app)
 ******************************************************************************************************************************/

// zero-ary operation
fun five() = 5

// unary operation with simple type
fun echo(name:String): String = name

// unary operation with complex type
type Person = {name: String, lastname: String}
fun toUpper(p: Person): Person =
    {
        name:upper(p.name),
        lastname:upper(p.lastname)
    }

// unary operation with array of complex type
fun toUpper(persons: Array<Person>): Array<Person> =
    persons map toUpper($)
