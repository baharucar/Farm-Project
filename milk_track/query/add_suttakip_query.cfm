<cftry>
    <cfquery name="INSERT_SUT" datasource="#DSN3#">
        INSERT INTO SUT_TAKIP
            (
                animalName,
                sagimSaati,
                sutMiktarKG,
                sagimSuresiSN,
                tarih,
                IS_ACTIVE
            )
        VALUES
            (   <cfif isDefined("attributes.animal_name") and len(attributes.animal_name)>'#attributes.animal_name#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.sagim_saati") and len(attributes.sagim_saati)>'#attributes.sagim_saati#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.sut_miktari") and len(attributes.sut_miktari)>'#attributes.sut_miktari#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.sagim_suresi") and len(attributes.sagim_suresi)>'#attributes.sagim_suresi#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.tarih") and len(attributes.tarih)>'#attributes.tarih#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.animal_status") and len(attributes.animal_status)>1<cfelse>0</cfif>
            )
    </cfquery>

    <cfquery name="GET_MAX_ANIMAL" datasource="#DSN3#">
        SELECT TOP(1) animalID FROM SUT_TAKIP ORDER BY animalID DESC
    </cfquery>

    <cfset attributes.animal_id = GET_MAX_ANIMAL.animalID>

    <script type="text/javascript">
        window.location.href = '<cfoutput>#request.self#?fuseaction=sales.list_suttakip&event=upd&animal_id=#attributes.animal_id#</cfoutput>';
    </script>
    <cfcatch  type="any">
        <cfsavecontent variable="ssss">
            <cfdump var="#cfcatch#">
        </cfsavecontent>
        <cffile action="write" output="#ssss#" file="#download_folder#suttakip_add_hata.html">
    </cfcatch>
</cftry>