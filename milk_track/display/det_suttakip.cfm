

<cfquery name="GET_SUT" datasource="#DSN3#">
    SELECT * FROM SUT_TAKIP WHERE animalID = #attributes.animal_id#
</cfquery>



<cfoutput>   
    <cf_box responsive_table="1" title="Süt Takip Genel Bilgiler">
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
            <cfoutput query="get_sut">
                
                           
             
                            
                <tr>
                    <td >
                        <b><i>Hayvan Adı:  <cfoutput>#animalName#</cfoutput></i></b>
                        <br>
                        <b><i>Sağım Saati : <cfoutput>#sagimSaati#</cfoutput> </i></b>
                        <br>
                        <b><i>Süt Miktarı : <cfoutput>#sutMiktarKG#</cfoutput> </i></b>
                        <br>
                        <b><i>Sağım Süresi : <cfoutput>#sagimSuresiSN#</cfoutput> </i></b>
                        <br>
                        <b><i>Sağım Tarihi : <cfoutput>#tarih#</cfoutput> </i></b>


                    </td>
                </tr>
                
                
            </cfoutput>
        </tbody>
       
    </cf_grid_list>
</cf_box>
