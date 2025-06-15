# string
A single line of text enclosed in double quotes.  
Used for names, IDs, environment values, etc.  
Example: "dev", "t2.micro"

# number
Represents numeric values, including integers and floats.  
Used for counts, timeouts, ports, etc.  
Example: 3, 1.5

# bool
Boolean value: true or false.  
Used for feature toggles or conditional logic.  
Example: true, false

# list(type)
Ordered collection of values of the same type.  
Accessed by index: list[0].  
Maintains the order in which items are declared.  
Example: ["us-east-1a", "us-east-1b"]

# set(type)
Unordered collection of unique values of the same type.  
Does not allow duplicates.  
Order of elements is not preserved.  
Example: ["web", "db"] (duplicates are removed automatically)

# map(type)
Key-value pairs, all values of the same type.  
Allows dynamic lookups using keys.  
Useful for environment-based configurations.  
Example: { dev = "t2.micro", prod = "t3.large" }

# object({ key = type, ... })
Collection of named attributes with different types.  
Like a struct or dictionary with a fixed schema.  
Suitable for structured and grouped data.  
Example: { name = "webapp", version = 1.0, secure = true }

# tuple([type, ...])
Ordered collection where each element can be of a different type.  
Each element’s type and position must be explicitly defined.  
Used when you want a fixed list of mixed-type values.  
Example: ["abc", 42, true]

## Summary table
| Type   | Ordered? | Unique? | Keyed? | Heterogeneous? | Use Case Example          |
| ------ | -------- | ------- | ------ | -------------- | ------------------------- |
| string | —        | —       | —      | No             | Names, environment values |
| number | —        | —       | —      | No             | Counts, limits            |
| bool   | —        | —       | —      | No             | Toggles, flags            |
| list   | ✅        | ❌       | ❌      | No             | Ordered data like AZs     |
| set    | ❌        | ✅       | ❌      | No             | Tags, feature flags       |
| map    | ❌        | —       | ✅      | No             | Lookup tables             |
| object | ❌        | —       | ✅      | Yes            | Grouped configuration     |
| tuple  | ✅        | —       | ❌      | Yes            | Positional mixed values   |


