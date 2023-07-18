<cfsavecontent variable="ssss">
    <cfdump var="#attributes#">
</cfsavecontent>
<cffile action="write" output="#ssss#" file="#download_folder#att.html">

<cftry>
    <cfquery name="UPD_ANIMALS" datasource="#DSN3#">
        UPDATE 
            HAYVANLAR
        SET
            animalName = <cfif isDefined("attributes.animal_name") and len(attributes.animal_name)>'#attributes.animal_name#'<cfelse>NULL</cfif>,
            animalColor = <cfif isDefined("attributes.animal_color") and len(attributes.animal_color)>'#attributes.animal_color#'<cfelse>NULL</cfif>,
            animalWeightKG = <cfif isDefined("attributes.animal_weight") and len(attributes.animal_weight)>#attributes.animal_weight#<cfelse>NULL</cfif>,
            IS_ACTIVE = <cfif isDefined("attributes.animal_status") and len(attributes.animal_status)>1<cfelse>0</cfif>
        WHERE animalID = #attributes.animal_id#       
       
    </cfquery>

    <script type="text/javascript">
        window.location.href = '<cfoutput>#request.self#?fuseaction=sales.list_animals&event=upd&animal_id=#attributes.animal_id#</cfoutput>';
    </script>
    
    <cfcatch  type="any">
        <cfsavecontent variable="ssss">
            <cfdump var="#cfcatch#">
        </cfsavecontent>
        <cffile action="write" output="#ssss#" file="#download_folder#animals_upd_hata.html">
    </cfcatch>
</cftry>