XLM2JQM - README

xml2jqm allows to build a jQuery Mobile application from an XML file. 

The XML file
============

     <pages_all>
     <doc_title>My title</doc_title>
     
     <page>                                            <!-- open page -->
     <page_id>one</page_id>                            <!-- unique page id -->
     <page_theme>b</page_theme>                        <!-- optional values a - e -->
     <header>Page header</header>                      <!-- optional -->
     <header_theme></header_theme>                     <!-- optional values a - e -->
     <header_position>fixed</header_position>          <!-- optional -->
     <content>your content here...</content>           <!-- page content -->
     <content_theme></content_theme>                   <!-- optional values a - e -->
     <footer>my footer</footer>                        <!-- optional -->
     <footer_theme>c</footer_theme>                    <!-- optional values a - e -->
     <footer_position>fixed</footer_position>          <!-- optional -->
     </page>                                           <!-- close page -->
     
     </pages_all>


The produced jQuery Mobile pages
================================

The XML file is transformed into HTML using XSLT. Each page, defined between <code>&lt;page&gt;</code> and <code>&lt;page&gt;</code> is turned into a separate jQuery Mobile page.
The page_id is used as the id attribute for the page. All pages in the document will be automatically linked through the automatically generated Previous and Next buttons in the header of the page. 
The Previous button is displayed on the left side of the header, and links to the previous page in the XML document. 
The Next button is displayed on the right side of the header, and links to the next page in the XML document. When displaying the first page of the XML document, since there is no "previous" page, the "Previous" button is not displayed. Likewise, when displaying the last page of the XML document, as there is no next page, the "Next" button is not displayed.

Linking your XML file to the xml2jqm.xsl
========================================



