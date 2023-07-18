

<cfquery name="GET_VET" datasource="#DSN3#">
    SELECT * FROM VETERINER_MUAYENE_TAKIBI WHERE animalID = #attributes.animal_id#
</cfquery>



<cfoutput>   
    <cf_box responsive_table="1" title="Veteriner Muayene Genel Bilgiler">
        <cf_box_elements>
            <div class="col col-4 col-md-4 col-sm-12" type="column" index="1" sort="true">
                <div class="form-group" id="item-animalid">
                    <div class="col col-8 col-sm-6">
                        <label><b>Hayvan ID <b></label>
                        
                        <label>#animal_id#</label>
                    </div>
                </div>
                
               
                
            </div>
            
        </cf_box_elements>
    </cf_box>
</cfoutput>







<cf_box title="Diğer Bilgiler">
    <cf_grid_list sort="0">
       
        
        <tbody>
            <cfoutput query="get_vet">
                
                           
             
                            
                <tr>
                    <td  >
                        <b><i>Hayvan Adı:  <cfoutput>#animalName#</cfoutput></i></b>
                        </br>
                        
                        <b><i>Son Muayene Tarihi : <cfoutput>#son_muayene_tarihi#</cfoutput> </i></b>
                        </br>
                        <b><i>Sonraki Muayene Tarihi : <cfoutput>#sonraki_muayene_tarihi#</cfoutput> </i></b>
                        <br>
                        <b><i>Son Muayene Ücreti : <cfoutput>#son_muayene_ücreti#</cfoutput> </i></b>


                    </td>
                </tr>
                
                
            </cfoutput>
        </tbody>
       
    </cf_grid_list>
</cf_box>
