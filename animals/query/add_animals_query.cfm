<!---
<script>
    alert("<cfoutput>#attributes.animal_name#</cfoutput>");
    alert("<cfoutput>#attributes.animal_color#</cfoutput>");
    alert("<cfoutput>#attributes.animal_weight#</cfoutput>");
    alert("<cfoutput>#attributes.animal_status#</cfoutput>");
</script>
<cfabort>



<cfsavecontent variable="ssss">
    <cfdump var="#attributes#">
</cfsavecontent>
<cffile action="write" output="#ssss#" file="#download_folder#att.html">

<cftry>
    <cfquery name="INSERT_ANIMALS" datasource="#DSN3#">
        INSERT INTO HAYVANLAR
            (
                animalName,
                animalColor,
                animalWeightKG,
                IS_ACTIVE
            )
        VALUES
            (  
                <cfif isDefined("attributes.animal_name") and len(attributes.animal_name)>'#attributes.animal_name#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.animal_color") and len(attributes.animal_color)>'#attributes.animal_color#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.animal_weight") and len(attributes.animal_weight)>#attributes.animal_weight#<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.animal_status") and len(attributes.animal_status)>1<cfelse>0</cfif>
            )
    </cfquery>

    <cfquery name="GET_MAX_ANIMAL" datasource="#DSN3#">
        SELECT TOP(1) animalID FROM HAYVANLAR ORDER BY animalID DESC
    </cfquery>

    <cfset attributes.animal_id = GET_MAX_ANIMAL.animalID>

    <script type="text/javascript">
        window.location.href = '<cfoutput>#request.self#?fuseaction=sales.list_animals&event=upd&animal_id=#attributes.animal_id#</cfoutput>';
    </script>
    <cfcatch  type="any">
        <cfsavecontent variable="ssss">
            <cfdump var="#cfcatch#">
        </cfsavecontent>
        <cffile action="write" output="#ssss#" file="#download_folder#animals_hata.html">
    </cfcatch>
</cftry>

--->

<cftry>
    <cfquery name="INSERT_ANIMAL" datasource="#DSN3#">
        INSERT INTO HAYVANLAR
            (
                animalName,
                animalColor,
                animalWeightKG,
                IS_ACTIVE
            )
        VALUES
            (  
                <cfif isDefined("attributes.animal_name") and len(attributes.animal_name)>'#attributes.animal_name#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.animal_color") and len(attributes.animal_color)>'#attributes.animal_color#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.animal_weight") and len(attributes.animal_weight)>#attributes.animal_weight#<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.animal_status") and len(attributes.animal_status)>1<cfelse>0</cfif>
            )
    </cfquery>

    <cfquery name="GET_MAX_ANIMAL" datasource="#DSN3#">
        SELECT TOP(1) animalID FROM HAYVANLAR ORDER BY animalID DESC
    </cfquery>

    <cfset attributes.animal_id = GET_MAX_ANIMAL.animalID>

    <script type="text/javascript">
      window.location.href = '<cfoutput>#request.self#?fuseaction=sales.list_animals&event=upd&animal_id=#attributes.animal_id#</cfoutput>';
    </script>
    <cfcatch  type="any">
         <cfsavecontent variable="ssss">
           <cfdump var="#cfcatch#">
         </cfsavecontent>
        <cffile action="write" output="#ssss#" file="#download_folder#sut_takip.html">
    </cfcatch>
</cftry>