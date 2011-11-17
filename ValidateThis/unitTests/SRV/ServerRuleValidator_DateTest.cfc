<!---
	
	// **************************************** LICENSE INFO **************************************** \\
	
	Copyright 2010, Bob Silverberg
	
	Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in 
	compliance with the License.  You may obtain a copy of the License at 
	
		http://www.apache.org/licenses/LICENSE-2.0
	
	Unless required by applicable law or agreed to in writing, software distributed under the License is 
	distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or 
	implied.  See the License for the specific language governing permissions and limitations under the 
	License.
	
--->
<cfcomponent extends="validatethis.unitTests.SRV.BaseForServerRuleValidatorTestsWithDataproviders" output="false">
	
	<cffunction name="setUp" access="public" returntype="void">
		<cfscript>
			// TODO: The test for shouldPass is failing under Railo, at the second value. Why?

			super.setup();
			SRV = getSRV("date");
			shouldPass = ["2010-01-01","Jan 1, 2010"];
			shouldFail = ["a"];
		</cfscript>
	</cffunction>
		
	<cffunction name="failureMessageIsCorrect" access="public" returntype="void">
		<cfscript>
			objectValue = "a";
            failureMessage = "The PropertyDesc must be a valid date.";
			
			configureValidationMock();
			
			executeValidate(validation);
			validation.verifyTimes(1).fail(failureMessage); 
		</cfscript>  
	</cffunction>
	
</cfcomponent>
