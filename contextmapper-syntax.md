Context mapper syntax:

See "contextmap-patternsX.cml" for syntax for context-mapping

For domain-modeling:
 * Use 'Aggregate' and 'Application' in 'BoundedContext'
    ``````
    ContextMap {
        contains MyContext
    }

    BoundedContext MyContext {

        Aggregate Agg {
        }

        Application App {
        }
    }
    ``````

 * Use 'Entity', 'ValueObject' and 'enum' in 'Aggregate'
    ``````
	Aggregate Meal {
        Entity Egg {
        }

        ValueObject Duration {
        }

        enum EggType {
        }
	}
    ``````
 * Use 'Service' in 'Application'
    ``````
	Application App {
        Service DomainService {
        }
	}
    ``````

 * Specify Aggregate root with 'aggregateRoot' in 'Entity'
    ``````
        Entity Order {
            aggregateRoot
        }
    ``````

 * Add '-' before property definition if it refers to another domain object
    ``````
            -Euro price
    ``````

 * Add '@' before names of domain objects _in the definition of something else_
    ``````
             -List<@Egg> eggs
    ``````

 * Add '*' before method definition and ';' behind it
    ``````
             * void applySalt(@Salt salt);
    ``````

 * But don't use '*' in Service functions
    ``````
            void placeOrder(@Order order);
    ``````

 * Use 'void' when method does not return anything
 * Use 'List<>' syntax for a collection (you can not specify cardinality)
 * Use 'int', 'String', 'boolean', 'double' as primitive types
 * Add '^' before keywords to escape them (e.g. 'create')
