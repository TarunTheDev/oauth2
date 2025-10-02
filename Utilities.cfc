<cfcomponent displayname="Math Utilities" hint="A simple ColdFusion component for math functions">

    <!--- Function: factorial --->
    <cffunction name="factorial" access="public" returntype="numeric" hint="Returns factorial of a number">
        <cfargument name="n" type="numeric" required="true">

        <cfif arguments.n LT 0>
            <cfthrow message="Factorial not defined for negative numbers.">
        </cfif>

        <cfset var result = 1>
        <cfloop from="2" to="#arguments.n#" index="i">
            <cfset result = result * i>
        </cfloop>

        <cfreturn result>
    </cffunction>

</cfcomponent>
