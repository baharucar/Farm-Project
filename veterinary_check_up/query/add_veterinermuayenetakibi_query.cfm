<cfsavecontent variable="ssss">
    <cfdump var="#attributes#">
</cfsavecontent>
<cffile action="write" output="#ssss#" file="#download_folder#att.html">

<cftry>
    <cfquery name="INSERT_VETERINER" datasource="#DSN3#">
        INSERT INTO VETERINER_MUAYENE_TAKIBI
            (
                animalName,
                son_muayene_tarihi,
                sonraki_muayene_tarihi,
                son_muayene_ücreti,
                IS_ACTIVE
            )
        VALUES
            (  
                <cfif isDefined("attributes.animal_name") and len(attributes.animal_name)>'#attributes.animal_name#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.son_muayene_tarihi") and len(attributes.son_muayene_tarihi)>'#attributes.son_muayene_tarihi#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.sonraki_muayene_tarihi") and len(attributes.sonraki_muayene_tarihi)>#attributes.sonraki_muayene_tarihi#<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.son_muayene_ücreti") and len(attributes.son_muayene_ücreti)>'#attributes.son_muayene_ücreti#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.animal_status") and len(attributes.animal_status)>1<cfelse>0</cfif>
            )
    </cfquery>

    <cfquery name="GET_MAX_MUAYENE" datasource="#DSN3#">
        SELECT TOP(1) animalID FROM VETERINER_MUAYENE_TAKIBI ORDER BY animalID DESC
    </cfquery>

    <cfset attributes.animal_id = GET_MAX_MUAYENE.animalID>

    <script type="text/javascript">
        window.location.href = '<cfoutput>#request.self#?fuseaction=sales.list_veterinermuayenetakibi&event=upd&animal_id=#attributes.animal_id#</cfoutput>';
    </script>
    <cfcatch  type="any">
        <cfsavecontent variable="ssss">
            <cfdump var="#cfcatch#">
        </cfsavecontent>
        <cffile action="write" output="#ssss#" file="#download_folder#amuayene_add_hata.html">
    </cfcatch>
</cftry>