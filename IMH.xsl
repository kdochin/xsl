<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template match="/">
  <HTML>
   <HEAD>
   <TITLE> Summary View </TITLE>

   <style type="text/css">
      body {font-family: "Verdana, Arial, Helvetica"}
       .hpilink{cursor:hand;font:9pt verdhana;color:green;}
      .roslink{cursor:hand;font:9pt verdhana;color:green;}
      .examlink{cursor:hand;font:9pt verdhana;color:green;}
      .phyexamlink{cursor:hand;font:9pt verdhana;color:green;}
      .lablink{cursor:hand;font:9pt verdhana;color:purple; text-decoration:underline;}
      .xraylink{cursor:hand;font:9pt verdhana;color:purple; text-decoration:underline;}
      .normaltext{font:9pt verdhana;}
	  .rightPaneData{font-family:"Georgia";font-size:9.0pt;font-weight:"normal";color:"#000000";}
	  .lab-result-header{font-weight:bold !important;text-decoration: underline !important;}
		
   </style>

   </HEAD>

  <BODY>
	<TABLE CELLSPACING="0" CELLPADDING="0" WIDTH="100%" border="0">
	<TR>
	<TD ALIGN="LEFT">         
	  <FONT COLOR="Maroon" SIZE="2"><b>Patient: </b></FONT>
	  <FONT SIZE="2"><xsl:value-of select="//return/patient"/></FONT>

	  <FONT COLOR="Maroon" SIZE="2"><b>&#160;&#160;&#160;&#160;DOB: </b></FONT>
	  <FONT SIZE="2"><xsl:value-of select="//return/DOB"/></FONT>

	  <FONT COLOR="Maroon" SIZE="2"><b>&#160;&#160;&#160;&#160;Age: </b></FONT>
	  <FONT SIZE="2"><xsl:value-of select="//return/age"/></FONT>

	  <FONT COLOR="Maroon" SIZE="2"><b>&#160;&#160;&#160;&#160;Sex: </b></FONT>
	  <FONT SIZE="2"><xsl:value-of select="//return/sex"/></FONT><br/>	
	</TD>         

	<TD ALIGN="RIGHT"><FONT COLOR="blue" SIZE="2"><b><xsl:value-of select="//return//enctype"/></b></FONT></TD>
	</TR>
	</TABLE>

    <FONT COLOR="Maroon" SIZE="2"><b>Phone: </b></FONT>
    <FONT SIZE="2"><xsl:value-of select="//return/phone"/></FONT>

    <FONT COLOR="Maroon" SIZE="2"><b>&#160;&#160;&#160;&#160; Primary Insurance: </b></FONT>
    <xsl:choose>
	<xsl:when test="//return/InsuranceName != ''">
    		<FONT SIZE="2"><xsl:value-of select="//return/InsuranceName"/></FONT>
    	</xsl:when>
    </xsl:choose>
		
    <br/>

    <FONT COLOR="Maroon" SIZE="2"><b>Address: </b></FONT>
    <FONT SIZE="2"><xsl:value-of select="//return/address"/></FONT><br/>
	
	<xsl:choose>
	<xsl:when test="//return/pcp">	

    <FONT COLOR="Maroon" SIZE="2"><b>Pcp: </b></FONT>
	<FONT SIZE="2"><xsl:value-of select="//return/pcp"/></FONT><br/>

	</xsl:when>
    </xsl:choose>

    <FONT COLOR="Maroon" SIZE="2"><b>Encounter Date: </b></FONT>
    <FONT SIZE="2"><xsl:value-of select="//return/encDate"/></FONT><br/>

    <FONT COLOR="Maroon" SIZE="2"><b>Provider: </b></FONT>
    <FONT SIZE="2"><xsl:value-of select="//return/doctor"/></FONT><br/>
   
    <HR/>

         <TABLE WIDTH="100%" BORDER="0">
            <TR>
            	<TD WIDTH="17%" VALIGN="TOP" ALIGN="LEFT"><FONT COLOR="blue" SIZE="2"><b></b>&#160;&#160;</FONT></TD>            	
            	<TD WIDTH="53%" ALIGN="LEFT"><FONT SIZE="2"></FONT></TD>
            	<TD WIDTH="30%" ALIGN="RIGHT"><FONT SIZE="2">Date: <xsl:value-of select="//return/date"/></FONT></TD>
            </TR>
            <TR>
<!-- The two lines below will be commented and replaced by dummies 
            	<TD VALIGN="TOP" ALIGN="LEFT"><FONT COLOR="blue" SIZE="2"><b>Assigned to</b>&#160;&#160;</FONT></TD>            	
            	<TD ALIGN="LEFT"><FONT SIZE="2"><xsl:value-of select="//return/assignedTo"/></FONT></TD>
-->
            	<TD>&#160;</TD>
            	<TD>&#160;</TD>

            	<TD  ALIGN="RIGHT"><FONT SIZE="2">Time: <xsl:value-of select="//return/time"/>&#160;&#160;&#160;</FONT></TD>
            </TR>
            <TR>
            	<TD><br/></TD>
            </TR>
	</TABLE>
	
        <TABLE WIDTH="100%" BORDER="0">

	<xsl:if test="//return/caller !=''">
	    <TR>
	    	<TD  WIDTH="17%" ALIGN="LEFT"><FONT COLOR="blue" SIZE="2"><b>Patient Name:</b>&#160;</FONT></TD>
	    	<TD  WIDTH="83%" ALIGN="LEFT"><FONT SIZE="2"><xsl:value-of select="//return/caller"/></FONT></TD>
	    </TR>
            <TR>
            	<TD><br/></TD>
            </TR>
    	</xsl:if>
	

	<xsl:if test="//return/reason !=''">
	    <TR>
	    	<TD WIDTH="17%" VALIGN="TOP" ALIGN="LEFT"><FONT COLOR="blue" SIZE="2"><b>Appointment Type</b>&#160;</FONT></TD>
	    	<TD WIDTH="83%" ALIGN="LEFT"><FONT SIZE="2"><xsl:value-of select="//return/reason"/></FONT></TD>
	    </TR>
            <TR>
            	<TD><br/></TD>
            </TR>
    	</xsl:if>

	<xsl:if test="//return/message !=''">
	    <TR>
	    	<TD WIDTH="17%" VALIGN="TOP" ALIGN="LEFT"><FONT COLOR="blue" SIZE="2">&#160;</FONT></TD>
	    	<TD WIDTH="83%" ALIGN="LEFT"><FONT SIZE="2"><xsl:value-of select="//return/message"   disable-output-escaping="yes"/></FONT></TD>
	    </TR>
            <TR>
            	<TD><br/></TD>
            </TR>
    	</xsl:if>


	<xsl:if test="//return/actiontaken !=''">
	    <TR>
	    	<TD WIDTH="17%" VALIGN="TOP" ALIGN="LEFT"><FONT COLOR="blue" SIZE="2"><b>Action Taken</b>&#160;</FONT></TD>
	    	<TD WIDTH="83%" ALIGN="LEFT"><FONT SIZE="2"><xsl:value-of select="//return/actiontaken"/></FONT></TD>
	    </TR>
            <TR>
            	<TD><br/></TD>
            </TR>
    	</xsl:if>


	<xsl:if test="//return/notes !=''">
	    <TR>
	    	<TD WIDTH="17%" VALIGN="TOP" ALIGN="LEFT"><FONT COLOR="blue" SIZE="2"><b>Notes</b>&#160;</FONT></TD>
	    	<TD WIDTH="83%" ALIGN ="LEFT"><FONT SIZE="2"><xsl:value-of select="//return/notes"/></FONT></TD>
	    </TR>
            <TR>
            	<TD><br/></TD>
            </TR>
    	</xsl:if>

	</TABLE>

    <HR/>
	<a name="virtual">
	</a>

<xsl:for-each select="//subItems">	
	<xsl:apply-templates select="subItemsName"/>
      	<xsl:for-each select="item">
          <xsl:apply-templates select="itemName"/>
          <xsl:variable name="strItemName" select='itemName'/>
          
		<xsl:choose> 
		<xsl:when test="not(($strItemName='Physical Examination:') or ($strItemName='ROS:'))">
		<xsl:apply-templates select="itemValue"/> 
		</xsl:when> 
		</xsl:choose>

		<!--Past Orders View : Start-->
		<xsl:choose>
			<xsl:when test="($strItemName='Past Results:')">
				<table cellspacing="0" cellpadding="0" width="100%">
				<xsl:for-each select="PastOrder">
                <!-- Display for non-cumulative Reports -->
                <xsl:if test="not(CumulativeResult)">
                    <tr class="rightPaneData">
                        <td colspan="4">
                            <u><b><xsl:value-of select="OrderName"/></b></u>
                        </td>
                    </tr>
                    <xsl:if test="OrderResult!=''">
                        <tr class="rightPaneData">
                            <td colspan="4">
                                &#160;&#160;&#160;&#160;&#160;&#160;Result: <xsl:value-of select="OrderResult"/>
                            </td>
                        </tr>
                    </xsl:if>

                    <xsl:for-each select="OrderDetail">
                        <xsl:if test="OrderItemFlag =''">
                            <xsl:if test="position()=1">
                                <tr>
                                    <td width="50%" align="left">
                                        &#160;&#160;&#160;&#160;&#160;&#160;
                                    </td>
                                    <td width="10%" colspan="2" align="left" class="lab-result-header">
                                        Value
                                    </td>
                                    <td width="30%" align="left" class="lab-result-header">
                                        Reference Range
                                    </td>
                                </tr>
                            </xsl:if>
                            <tr class="rightPaneData">
                                <td width="50%" align="left">&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="OrderItemName" /></td>
                                <td width="10%" align="left"><xsl:value-of select="OrderItemValue" /></td>
                                <td width="10%" align="left"><xsl:value-of select="OrderItemFlag" /></td>
                                <td width="30%" align="left"><xsl:value-of select="OrderItemRange" /></td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="OrderItemFlag !=''">
                            <tr class="rightPaneData">
                                <td width="50%" align="left"  style="font-weight:bold;">&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="OrderItemName" /></td>
                                <td width="10%" align="left"  style="font-weight:bold;"><xsl:value-of select="OrderItemValue" /></td>
                                <td width="10%" align="left" style="font-weight:bold;"><xsl:value-of select="OrderItemFlag" /></td>
                                <td width="30%" align="left" style="font-weight:bold;"><xsl:value-of select="OrderItemRange" /></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>



                    <xsl:if test="OrderNotes!=''">
                        <tr class="rightPaneData">
                            <td colspan="4">
                                <span name="OrderNotes">&#160;&#160;&#160;&#160;&#160;&#160;Notes: <xsl:value-of select="OrderNotes"/></span>
                            </td>
                        </tr>
                    </xsl:if>

                    <xsl:if test="ClinicalInfo !=''">
                        <tr class="rightPaneData">
                            <td colspan="4">
                                <span name="ClinicalInfo">&#160;&#160;&#160;&#160;&#160;&#160;Clinical Info: <xsl:value-of select="ClinicalInfo"/></span>
                            </td>
                        </tr>
                    </xsl:if>

                    <tr class="rightPaneData"><td colspan="4"><br></br></td></tr>
                </xsl:if> <!-- End of Display for non-cumulative Reports -->

                <!-- Display for cumulative Reports -->
                <xsl:if test="CumulativeResult">
                    <tr>
                        <td colspan="4">
                            <table width="100%">
							<tr>
								<td>
								<xsl:apply-templates select="labInfo/labDates[position() mod $cumReportColLimit = 1]" >
									<xsl:with-param name="PastOrderPosition" select="position()"/>
								</xsl:apply-templates>
							</td></tr></table></td></tr>
                </xsl:if> <!-- End of Display for cumulative Reports -->
            </xsl:for-each>
				</table>
			</xsl:when>
		</xsl:choose>
		<!--Past Orders View : End-->
           
        <xsl:choose>
		  <xsl:when test="Lab">  
			<xsl:apply-templates select="Lab"/>
		  </xsl:when>
		</xsl:choose>
			
        <xsl:choose>
		  <xsl:when test="Xray"> 
			<xsl:apply-templates select="Xray"/>
       	  	  </xsl:when>
		</xsl:choose>  
		 
		<xsl:choose>
		  <xsl:when test="Drawing">
			<xsl:apply-templates select="Drawing"/>
		  </xsl:when>
		</xsl:choose>	
		  
	<xsl:for-each select="category">
		       <xsl:choose> 
			<xsl:when test="not($strItemName='Assessment:')">
				<xsl:apply-templates select="categoryName"/>
			</xsl:when>
			</xsl:choose> 


		     <xsl:choose> 
			<xsl:when test="($strItemName='Physical Examination:')">
			&#160;&#160;&#160;&#160;&#160;&#160;&#160;
			
      		     	<xsl:for-each select="categoryPhyExamDetail">
			
                        <span class="phyexamlink">
                            <xsl:attribute name="encid">
                                <xsl:value-of select="encounterId" />
                            </xsl:attribute> 
                            <xsl:attribute name="categoryId">
                                <xsl:value-of select="categoryId" />
                            </xsl:attribute> 
                            <xsl:attribute name="itemId">
                                <xsl:value-of select="itemId" />
                            </xsl:attribute> 
                            <xsl:attribute name="label">
                                <xsl:value-of select="itemName" />
                            </xsl:attribute> 
                            <xsl:attribute name="notes">
                                <xsl:value-of select="phyExamNotes" disable-output-escaping="yes"/>
                            </xsl:attribute> 
                            <xsl:value-of select="itemName" />&#160;
                        </span>
                        <span class="normaltext"><xsl:value-of select="phyExamNotes2" disable-output-escaping="yes"/>.&#160;</span>
 		       </xsl:for-each>
		     <br/>

		    </xsl:when>
		 </xsl:choose> 
			
		
                 <xsl:for-each select="categoryInDetail">
                    &#160;&#160;&#160;&#160;&#160;&#160;&#160;
                    <xsl:for-each select="cat_det">
                        <span class="examlink"  >
                            <xsl:attribute name="encid">
                                <xsl:value-of select="encounterID" />
                            </xsl:attribute> 
                            <xsl:attribute name="examid">
                                <xsl:value-of select="examId" />
                            </xsl:attribute> 
                            <xsl:attribute name="categoryPropId">
                                <xsl:value-of select="categoryPropId" />
                            </xsl:attribute> 
                            <xsl:attribute name="label">
                                <xsl:value-of select="categorySubName" />
                            </xsl:attribute> 
                            <xsl:attribute name="notes">
                                <xsl:value-of select="examNotes" disable-output-escaping="yes"/>
                            </xsl:attribute> 
                            <xsl:value-of select="categorySubName" />&#160;
                        </span>
                        <span class="normaltext"><xsl:value-of select="examNotes2" disable-output-escaping="yes"/>.&#160;</span>
                    </xsl:for-each>
                    <br/>
                </xsl:for-each>

			
	<xsl:apply-templates select="categoryNotesHeader"/>

	<xsl:choose> 
		<xsl:when test="not(($strItemName='Examination:') or ($strItemName='HPI:'))">
			<xsl:apply-templates select="categoryValue"/>
		</xsl:when>
	</xsl:choose> 


	      <xsl:choose> 
		<xsl:when test="($strItemName='HPI:')">
                 <xsl:for-each select="HpiDetail1">
                 	<xsl:if test="(position()=1)">
		    	  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		   	</xsl:if>
			<span class="normaltext">
		   	    <xsl:if test="(position()=1)">
		    		<xsl:value-of select="prefix1" />
		   	    </xsl:if>
			    <xsl:value-of select="prefix2" />
			</span>

                        <span class="hpilink"  >
                            <xsl:attribute name="encId">
                                <xsl:value-of select="encId" />
                            </xsl:attribute> 
                            <xsl:attribute name="catId">
                                <xsl:value-of select="catId" />
                            </xsl:attribute> 
                            <xsl:attribute name="propId">
                                <xsl:value-of select="propId" />
                            </xsl:attribute> 
                            <xsl:attribute name="label">
                                <xsl:value-of select="hpiName"/>
                            </xsl:attribute> 
                            <xsl:attribute name="notes">
                                <xsl:value-of select="hpiNotes" disable-output-escaping="yes"/>
                            </xsl:attribute> 
                            <xsl:attribute name="duration">
                                <xsl:value-of select="duration"/>
                            </xsl:attribute>

                            <xsl:value-of select="hpiName" />
			</span>
			<span class="normaltext">
                    	    <xsl:if test="duration !=''">
                        	&#160;for&#160;<xsl:value-of select="duration" />
                           </xsl:if>
			</span>
                    	    <xsl:if test="notes !=''">
                        	&#160;<xsl:value-of select="hpiNotes2" disable-output-escaping="yes"/>
                           </xsl:if>.&#160;
			
                 </xsl:for-each>

		 <xsl:if test="HpiDetail1 !=''">
		 	<br/>
		 </xsl:if>

                 <xsl:for-each select="HpiDetail2">
                 	<xsl:if test="(position()=1)">
		    	  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		   	</xsl:if>

			<span class="normalText"  >
		   	    <xsl:if test="(position()=1)">
		    		<xsl:value-of select="prefix" />
		   	    </xsl:if>
			</span>
                        <span class="hpilink"  >
                            <xsl:attribute name="encId">
                                <xsl:value-of select="encId" />
                            </xsl:attribute> 
                            <xsl:attribute name="catId">
                                <xsl:value-of select="catId" />
                            </xsl:attribute> 
                            <xsl:attribute name="propId">
                                <xsl:value-of select="propId" />
                            </xsl:attribute> 
                            <xsl:attribute name="label">
                                <xsl:value-of select="hpiName" />
                            </xsl:attribute> 
                            <xsl:attribute name="notes">
                                <xsl:value-of select="hpiNotes" disable-output-escaping="yes"/>
                            </xsl:attribute> 
                            <xsl:attribute name="duration">
                                <xsl:value-of select="duration" />
                            </xsl:attribute>
                            <xsl:value-of select="hpiName" />
			</span>
			<span class="normalText"  >
                    	    <xsl:if test="duration !=''">
                        	&#160;for&#160;<xsl:value-of select="duration"/>
                           </xsl:if>
			</span>
                    	    <xsl:if test="notes !=''">
                        	&#160;<xsl:value-of select="hpiNotes2" disable-output-escaping="yes"/>
                           </xsl:if>.&#160;
			
                 </xsl:for-each>
                 
 				<xsl:if test="HpiDetail2 !=''">
					<br/>
				</xsl:if>                
                 
                 <xsl:for-each select="HpiDetail3">
                 	<xsl:if test="(position()=1)">
		    	  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				</xsl:if>

                        <span class="hpilink"  >
                            <xsl:attribute name="encId">
                                <xsl:value-of select="encId" />
                            </xsl:attribute> 
                            <xsl:attribute name="catId">
                                <xsl:value-of select="catId" />
                            </xsl:attribute> 
                            <xsl:attribute name="propId">
                                <xsl:value-of select="propId" />
                            </xsl:attribute> 
                            <xsl:attribute name="label">
                                <xsl:value-of select="hpiName" />
                            </xsl:attribute> 
                            <xsl:attribute name="notes">
                                <xsl:value-of select="hpiNotes" disable-output-escaping="yes"/>
                            </xsl:attribute> 
                            <xsl:attribute name="duration">
                                <xsl:value-of select="duration" />
                            </xsl:attribute>
                            <xsl:value-of select="hpiName" />
			</span>
			<span class="normalText"  >
                    	    <xsl:if test="duration !=''">
                        	&#160;for&#160;<xsl:value-of select="duration" />
                           </xsl:if>
			</span>
                    	    <xsl:if test="notes !=''">
                        	&#160;<xsl:value-of select="hpiNotes2" disable-output-escaping="yes"/>
                           </xsl:if>.&#160;
			
                 </xsl:for-each>                 
                 
                 
	       </xsl:when>
	      </xsl:choose> 
		
		  <xsl:for-each select="rosDetail">
		    <xsl:if test="(position()=1)">
		    	&#160;&#160;&#160;&#160;&#160;&#160;&#160;
		    </xsl:if>
			<xsl:choose> 
			  <xsl:when test="starts-with(value,'*')">
			    <FONT  COLOR="black" SIZE="2"><xsl:value-of select="translate(value,'*','')" />&#160;</FONT>
			      <span class="roslink"  >    
					<xsl:attribute name="encounterid">
					    <xsl:value-of select="EncounterId" />
					</xsl:attribute> 
					<xsl:attribute name="categoryid">
					    <xsl:value-of select="CategoryId" />
					</xsl:attribute> 
					<xsl:attribute name="itemid">
					    <xsl:value-of select="ItemId" />
					</xsl:attribute> 
					<xsl:attribute name="propid">
					    <xsl:value-of select="PropId" />
					</xsl:attribute> 
					<xsl:attribute name="options">
					    <xsl:value-of select="options" />
					</xsl:attribute> 
					<xsl:attribute name="notes">
					    <xsl:value-of select="rosNotes" disable-output-escaping="yes"/>
					</xsl:attribute> 
					<xsl:attribute name="label">
					    <xsl:value-of select="name" />
					</xsl:attribute> 
					<xsl:value-of select="name" />
				</span>
			  </xsl:when>
			  <xsl:when test="value = 'yes' ">
			    <span class="roslink"  >    
					<xsl:attribute name="encounterid">
					    <xsl:value-of select="EncounterId" />
					</xsl:attribute> 
					<xsl:attribute name="categoryid">
					    <xsl:value-of select="CategoryId" />
					</xsl:attribute> 
					<xsl:attribute name="itemid">
					    <xsl:value-of select="ItemId" />
					</xsl:attribute> 
					<xsl:attribute name="propid">
					    <xsl:value-of select="PropId" />
					</xsl:attribute> 
					<xsl:attribute name="options">
					    <xsl:value-of select="options" />
					</xsl:attribute> 
					<xsl:attribute name="notes">
					    <xsl:value-of select="rosNotes" disable-output-escaping="yes"/>
					</xsl:attribute> 
					<xsl:attribute name="label">
					    <xsl:value-of select="name" />
					</xsl:attribute> 
					<xsl:value-of select="name" />
				</span>
			     <FONT COLOR="black" SIZE="2">&#160;<xsl:value-of select="translate(value,'*','')" /></FONT>
			  </xsl:when>
			                  
			  <xsl:when test="value = 'no' ">
			    <FONT COLOR="black" SIZE="2"><xsl:value-of select="translate(value,'*','')" />&#160;</FONT>
			    <span class="roslink"  >    
					<xsl:attribute name="encounterid">
					    <xsl:value-of select="EncounterId" />
					</xsl:attribute> 
					<xsl:attribute name="categoryid">
					    <xsl:value-of select="CategoryId" />
					</xsl:attribute> 
					<xsl:attribute name="itemid">
					    <xsl:value-of select="ItemId" />
					</xsl:attribute> 
					<xsl:attribute name="propid">
					    <xsl:value-of select="PropId" />
					</xsl:attribute> 
					<xsl:attribute name="options">
					    <xsl:value-of select="options" />
					</xsl:attribute> 
					<xsl:attribute name="notes">
					    <xsl:value-of select="rosNotes" disable-output-escaping="yes"/>
					</xsl:attribute> 
					<xsl:attribute name="label">
					    <xsl:value-of select="name" />
					</xsl:attribute> 
					<xsl:value-of select="name" />
				</span>
			  </xsl:when>
			                  
			  <xsl:otherwise>
				<span class="roslink"  >    
					<xsl:attribute name="encounterid">
					    <xsl:value-of select="EncounterId" />
					</xsl:attribute> 
					<xsl:attribute name="categoryid">
					    <xsl:value-of select="CategoryId" />
					</xsl:attribute> 
					<xsl:attribute name="itemid">
					    <xsl:value-of select="ItemId" />
					</xsl:attribute> 
					<xsl:attribute name="propid">
					    <xsl:value-of select="PropId" />
					</xsl:attribute> 
					<xsl:attribute name="options">
					    <xsl:value-of select="options" />
					</xsl:attribute> 
					<xsl:attribute name="notes">
					    <xsl:value-of select="rosNotes" disable-output-escaping="yes"/>
					</xsl:attribute> 
					<xsl:attribute name="label">
					    <xsl:value-of select="name" />
					</xsl:attribute> 
					<xsl:value-of select="name" />
				</span>
			    <FONT COLOR="black" SIZE="2">&#160;<xsl:value-of select="translate(value,'*','')" /></FONT>
			  </xsl:otherwise>
			                  
			</xsl:choose> 
		
			<xsl:if test="notes !=''">
				,&#160;<xsl:value-of select="rosNotes2" disable-output-escaping="yes"/>
			</xsl:if>.&#160;
		</xsl:for-each>
		  
		<xsl:choose> 
		<xsl:when test="(($strItemName='ROS:') or (($strItemName='HPI:') and (HpiDetail3 !='')))">
		  <br/>
		</xsl:when>
		</xsl:choose>
		
			
	<xsl:apply-templates select="Lab"/>
	<xsl:apply-templates select="Xray"/>
	<xsl:apply-templates select="categoryNotes"/>

	</xsl:for-each>


	<xsl:choose> 
	<xsl:when test="(($strItemName='Physical Examination:') or ($strItemName='ROS:'))">
	<xsl:apply-templates select="itemValue"/> 
	</xsl:when> 
	</xsl:choose>

          <xsl:apply-templates select="itemRemNotes"/>
          <xsl:apply-templates select="itemNotes"/>
          <xsl:apply-templates select="itemAdtlNotes"/> 
        </xsl:for-each>
      </xsl:for-each>

<br/>
     <xsl:apply-templates select="//return/addendums"/>

  </BODY>
  </HTML>
</xsl:template>

<xsl:template match="labDates/*">
        <td width="10%" align="left" style="padding-right: 10px;"><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:variable name="cumReportColLimit" select="5" />

    <xsl:template match="labDates">
        <xsl:param name = "PastOrderPosition" />
        <xsl:variable name="cols" select=". | following-sibling::labDates[position() &lt; $cumReportColLimit]"/>
        <xsl:variable name="labDatesPosition" select="position()"/>
        <xsl:variable name="rowsLabDates" select="//subItems/item/PastOrder[$PastOrderPosition]/labInfo/labDates[1]/*" />
        <xsl:variable name="rowsResultParam" select="//subItems/item/PastOrder[$PastOrderPosition]/results/resultParam" />


        <table> <tr class="rightPaneData">
            <td colspan="4">

                <u><b><xsl:value-of select="//subItems/item/PastOrder[$PastOrderPosition]/OrderName"/></b>
                    <xsl:if test="position() > 1"> (continued)</xsl:if></u>
            </td>
        </tr></table>

        <table width="100%" border="1" cellspacing="0" cellpadding="0" rules="rows" frame="void">
            <xsl:for-each select="$rowsLabDates">
                <xsl:variable name="row" select="position()"/>
                <xsl:if test="name() = 'CollDate' or name() = 'OrderDate' or (name() = 'OrderResult' and //subItems/item/PastOrder[$PastOrderPosition]/labInfo/ResultPresent)">
                    <tr class="rightPaneData"><td style="padding-left: 5px;padding-right: 10px;" width="13%" align="left">
                        <xsl:choose>
                            <xsl:when test="name() = 'CollDate'">
								<xsl:choose>
									<xsl:when test="//subItems/item/PastOrder[$PastOrderPosition]/labInfo/labDates[1]/OrderType='3'">Performed Date</xsl:when>
									<xsl:otherwise>Collection Date</xsl:otherwise>
								</xsl:choose>
                            </xsl:when>
                            <xsl:when test="name() = 'OrderDate'">
                                Order Date
                            </xsl:when>
                            <xsl:when test="name() = 'OrderResult'">
                                Result:
                            </xsl:when>
                            <xsl:otherwise></xsl:otherwise>
                        </xsl:choose>
                        <xsl:apply-templates select="$cols/*[$row]"/>
                    </td></tr>
                </xsl:if>
            </xsl:for-each>


            <xsl:for-each select="$rowsResultParam">
                <tr class="rightPaneData">
                    <td style="padding-left: 5px;padding-right: 10px;" width="13%" align="left"><xsl:value-of select="name"/></td>
                    <xsl:apply-templates select="resultSet[((($labDatesPosition -1) * $cumReportColLimit ) + 1)]" />
                </tr>
            </xsl:for-each>

            <xsl:if test="//subItems/item/PastOrder[$PastOrderPosition]/labInfo/NotesPresent">
                <xsl:for-each select="$rowsLabDates">
                    <xsl:variable name="row" select="position()"/>
                    <xsl:if test="name() = 'OrderNotes'">
                        <tr class="rightPaneData">
                            <td style="padding-left: 5px;padding-right: 10px;" width="13%" align="left">
                                Notes:
                            </td>
                            <xsl:apply-templates select="$cols/*[$row]"/>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </xsl:if>

            <xsl:if test="//subItems/item/PastOrder[$PastOrderPosition]/labInfo/ClinicalInfoPresent">
                <xsl:for-each select="$rowsLabDates">
                    <xsl:variable name="row" select="position()"/>
                    <xsl:if test="name() = 'ClinicalInfo'">
                        <tr class="rightPaneData">
                            <td style="padding-left: 5px;padding-right: 10px;" width="13%" align="left">
                                Clinical Info:
                            </td>
                            <xsl:apply-templates select="$cols/*[$row]"/>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </xsl:if>
        </table>

        <table><tr class="rightPaneData"><td colspan="4"><br></br></td></tr></table>
    </xsl:template>

    <xsl:template match="resultSet">
        <xsl:variable name="cols" select=". | following-sibling::resultSet[position() &lt; $cumReportColLimit]"/>
        <xsl:for-each select="$cols">
            <xsl:if test="flag =''">
                <td width="10%" align="left">
                    <xsl:value-of select="value"/>
                    <br></br>
                    <xsl:if test="range !=''">
                        (Ref Range: <xsl:value-of select="range"/>)
                    </xsl:if>
                </td>
            </xsl:if>

            <xsl:if test="flag !=''">
                <td width="10%" align="left">
                    <FONT style="font-weight:bold;"><xsl:value-of select="value"/>&#160;&#160;&#160;&#160;<xsl:value-of select="flag"/></FONT>
                    <br></br>
                    <xsl:if test="range !=''">
                        (Ref Range: <xsl:value-of select="range"/>)
                    </xsl:if>
                </td>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
	
<xsl:template match="subItemsName">
    <br/><b><FONT COLOR="green" SIZE="3"><xsl:value-of select="."/></FONT></b><br/>
</xsl:template>

<xsl:template match="itemName">
&#160;&#160;  
    <FONT COLOR="blue" SIZE="2"><b><xsl:value-of select="."/></b></FONT><br/>
</xsl:template>

<xsl:template match="itemValue">
  &#160;&#160;&#160;&#160;&#160;
    <FONT FACE="Verdana" SIZE="2"><xsl:value-of select="."/></FONT><br/>
</xsl:template>

<xsl:template match="Drawing">
   &#160;&#160;&#160;&#160;&#160;
  <a HREF=""><FONT FACE="Verdana" SIZE="2">Drawing:<xsl:value-of select="."/></FONT></a><br/>	
</xsl:template>

<xsl:template match="categoryName">
  &#160;&#160;&#160;&#160;
  <FONT COLOR="purple" SIZE="2"><xsl:value-of select="."/></FONT><br/> 
</xsl:template>

<xsl:template match="categoryValue">
  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    <FONT SIZE="2"><xsl:value-of select="."/></FONT><br/> 
</xsl:template>


<xsl:template match="Lab">
  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    <span class="lablink">
		<xsl:attribute name="labid">
		    <xsl:value-of select="LabId" />
		</xsl:attribute> 
		Lab:<xsl:value-of select="LabName" />
    </span>
    <xsl:if test="LabResult !=''">
        &#160;<span class="normaltext"><xsl:value-of select="LabResult" /></span>
    </xsl:if>
    <br/> 
    <xsl:if test="LabDetail !=''">
     &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
     <span class="normaltext"><xsl:value-of select="LabDetail" /></span><br/>
    </xsl:if>
    <xsl:if test="LabNotes !=''">
     &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
     <span class="normaltext"><xsl:value-of select="LabNotes" /></span><br/>
    </xsl:if>
</xsl:template>

<xsl:template match="Xray">
  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    <span class="xraylink">
		<xsl:attribute name="xrayId">
		    <xsl:value-of select="xrayId" />
		</xsl:attribute> 
		Imaging:<xsl:value-of select="xrayName" />
    </span>
    <xsl:if test="xrayResult !=''">
        &#160;<span class="normaltext"><xsl:value-of select="xrayResult" /></span>
    </xsl:if>
    <br/> 
    <xsl:if test="xrayNotes !=''">
     &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
     <span class="normaltext"><xsl:value-of select="xrayNotes" /></span><br/>
    </xsl:if>
</xsl:template>
	
<xsl:template match="categoryNotesHeader">
  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    <FONT SIZE="2"><xsl:value-of select="."/></FONT><br/> 
</xsl:template>

<xsl:template match="categoryNotes">
  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    <FONT SIZE="2"><xsl:value-of select="."/></FONT><br/> 
</xsl:template>

<xsl:template match="itemRemNotes">
  &#160;&#160;&#160;&#160;&#160;
    <FONT SIZE="2"><xsl:value-of select="."/></FONT><br/> 
</xsl:template>

<xsl:template match="itemAdtlNotes">
  &#160;&#160;&#160;&#160;&#160;
    <FONT SIZE="2"><xsl:value-of select="."/></FONT><br/> 
</xsl:template>

<xsl:template match="itemNotes">
  &#160;&#160;&#160;&#160;&#160;
    <FONT SIZE="2"><xsl:value-of select="."/></FONT><br/> 
</xsl:template>

<xsl:template match="phyExamValue">
  &#160;&#160;&#160;&#160;&#160;
    <xsl:value-of select="./comment()" disable-output-escaping="yes"/><br/>
</xsl:template>

<xsl:template match="addendums">
  <table class="table1" cellspacing="0" cellpadding="0" width="100%">
    <tr><td COLSPAN="2"><b><font color="blue" size="2">Addendum</font></b></td></tr> 
	 <xsl:apply-templates select="addendum"/>
    <tr height="5"><td></td></tr>
  </table>
</xsl:template>

<xsl:template match="addendum">
  
    <tr><td width="10"></td><td><font size="2"><xsl:value-of select="date"/>&#160;<xsl:value-of select="time"/>&#160;<xsl:value-of select="userName"/>&#160;&#62;&#160;<xsl:value-of select="notes"/></font></td></tr>
</xsl:template>

</xsl:stylesheet>
