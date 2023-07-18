<cftry>
    <cfquery name="INSERT_ANIMALS" datasource="#DSN3#">
        INSERT INTO GUNLUK_YEM_HARCAMALARI
            (
                animalName,
                harcamaMiktar,
                odemeDurumu,
                IS_ACTIVE
            )
        VALUES
            (   <cfif isDefined("attributes.animal_name") and len(attributes.animal_name)>'#attributes.animal_name#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.harcama_miktar") and len(attributes.harcama_miktar)>'#attributes.harcama_miktar#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.odeme_durumu") and len(attributes.odeme_durumu)>'#attributes.odeme_durumu#'<cfelse>NULL</cfif>,
                <cfif isDefined("attributes.feed_status") and len(attributes.feed_status)>1<cfelse>0</cfif>
            )
    </cfquery>

    <cfquery name="GET_MAX_ANIMAL" datasource="#DSN3#">
        SELECT TOP(1) animalID FROM GUNLUK_YEM_HARCAMALARI ORDER BY animalID DESC
    </cfquery>

    <cfset attributes.animal_id = GET_MAX_ANIMAL.animalID>

    <script type="text/javascript">
        window.location.href = '<cfoutput>#request.self#?fuseaction=sales.list_gunlukyemharcamalari&event=upd&animal_id=#attributes.animal_id#</cfoutput>';
    </script>
    <cfcatch  type="any">
        <cfsavecontent variable="ssss">
            <cfdump var="#cfcatch#">
        </cfsavecontent>
        <cffile action="write" output="#ssss#" file="#download_folder#gunluk_yem_add_hata.html">
    </cfcatch>
</cftry>